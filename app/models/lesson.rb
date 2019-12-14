class Lesson < ApplicationRecord
  belongs_to :user
  belongs_to :topic, optional: true
  has_many :comments, dependent: :destroy
  has_many :join_favorite_lessons, dependent: :destroy
  has_many :favorites, through: :join_favorite_lessons, dependent: :destroy
  has_many :rates
  has_many :proposals
end
