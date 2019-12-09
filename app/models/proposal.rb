class Proposal < ApplicationRecord
	belongs_to :user
	belongs_to :lesson
end
