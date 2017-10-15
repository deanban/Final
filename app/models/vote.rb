class Vote < ApplicationRecord
	
	belongs_to :user
	belongs_to :answer

	# validates :user, :answer, presence: true
	# validates :number, :inclusion => -1..1
	# validates_numericality_of :vote_count, greater_than_or_equal_to: -1, less_than_or_equal_to: 1, message: 'must be between -1 to 1'



end