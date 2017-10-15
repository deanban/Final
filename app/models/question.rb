class Question < ApplicationRecord
	has_many :answers
	belongs_to :category
	belongs_to :user
	has_many :question_tags
	has_many :tags, through: :question_tags

end
