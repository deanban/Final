class Category < ApplicationRecord
	has_many :questions
	validates :questions, presence: true
end
