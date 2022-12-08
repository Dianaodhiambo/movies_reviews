class ReviewsController < ApplicationController
    wrap_parameters format: []
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

    def index
        reviews = Review.all.order(rating: :desc)
        render json: reviews, status: :ok
    end 

    def show
        review = Review.findy_by(id:params[:id])
        render json: review, status: :ok, include: :movies
    end

    def create
        review = Review.create(review_params)
        render json: review, status: :created
    end

    def update
        review = Review.find_by(id:params[:id])
        review.update!(review_params)
        render json: review, status: :accepted
        rescue ActiveRecord::RecordInvalid =>e
          render json: {error: e.record.errors.full_messages}, status: :unprocessable_entity
    end

    def destroy
        review = Review.find_by(id: params[:id])
        if review
          review.destroy
          head :no_content
        else
          render json: { error: "Review not found" }, status: :not_found
        end
    end

    private

    def review_params
        params.permit(:id, :username, :comment, :rating)
    end

    def render_not_found_response
        render json: { error: "Review not found" }, status: :not_found
    end
end
