class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :username, :comment, :rating, :movie_id

  belongs_to :movie
end
