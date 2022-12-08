class MoviesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_message
    def index
        movies = Movie.all
        render json: movies, status: :ok
    end

    def show
        movie = find_movie
        render json: movie.to_json(only: [:id, :title, :image_url, :description, :category, :slug], include: [reviews: {only: [:id, :comment, :rating,], include: [user: {only: [:id, :username]}]}] )
    end

    private
    def find_movie
        Movie.find(params[:id])
    end

    def render_not_found_message
        render json: {error: 'Movie not found'}, status: 404
    end

    def movie_params
        params.require(:movie).permit(:name, :image_url, :description)
    end
 
end
