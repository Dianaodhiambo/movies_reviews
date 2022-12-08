class AddMovieRefToReviews < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews, :movie, foreign_key: true
  end
end
