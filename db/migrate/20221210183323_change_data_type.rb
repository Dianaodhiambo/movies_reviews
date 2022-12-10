class ChangeDataType < ActiveRecord::Migration[7.0]
  def change
    change_column(:reviews, :rating, :string)
  end
end
