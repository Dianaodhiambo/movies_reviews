class RenamePosterPathToImageUrlInMovies < ActiveRecord::Migration[7.0]
  def change
    rename_column :movies, :poster_path, :image_url
  end
end
