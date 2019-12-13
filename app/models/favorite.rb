class Favorite < ApplicationRecord
	belongs_to :user, dependent: :destroy
	has_many :join_favorite_lessons
  	has_many :lessons, through: :join_favorite_lessons
end
