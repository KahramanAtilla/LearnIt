class Lesson < ApplicationRecord
  belongs_to :user
  belongs_to :topic, optional: true
end
