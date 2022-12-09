class AddReviewsToMovies < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :reviews, :string
  end
end
