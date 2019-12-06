class Lesson < ApplicationRecord
  belongs_to :user
  belongs_to :topic, optional: true
  has_many :comments, dependent: :destroy
end
