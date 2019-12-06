class JoinFavoriteLesson < ApplicationRecord
	belongs_to :lesson
  	belongs_to :favorite
end
