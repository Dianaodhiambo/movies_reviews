class RenameImageToPosterPathInMovies < ActiveRecord::Migration[7.0]
  def change
    rename_column :movies, :image, :poster_path
  end
end
