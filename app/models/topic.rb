class Topic < ApplicationRecord
  has_many :lessons, dependent: :destroy
end
