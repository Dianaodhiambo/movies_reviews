class Movie < ApplicationRecord
    has_many :reviews, dependent: :destroy

    before_create :slugify

    def slugify
        self.slug = title.parameterize
    end

    def avg_score
        reviews.average(:rating).round(2).to_f
    end
end

