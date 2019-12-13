class JoinFavoriteLesson < ApplicationRecord
	belongs_to :lesson, dependent: :destroy
  	belongs_to :favorite, dependent: :destroy
end
