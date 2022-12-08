class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :category, :image_url

  has_many :reviews
end
