class JoinFavoriteLesson < ApplicationRecord
	belongs_to :lesson, dependent: :destroy
  	belongs_to :favorite, dependent: :destroy

  	validates_uniqueness_of :lesson, scope: :favorite_id
end
