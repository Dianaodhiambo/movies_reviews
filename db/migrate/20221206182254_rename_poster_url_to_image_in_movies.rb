class RenamePosterUrlToImageInMovies < ActiveRecord::Migration[7.0]
  def change
    rename_column :movies, :poster_url, :image
  end
end
