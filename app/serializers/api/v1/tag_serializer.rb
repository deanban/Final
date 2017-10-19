class Api::V1::TagSerializer < ActiveModel::Serializer
	attributes :id, :name

	has_many :question_tags
	has_many :questions, through: :question_tags

	# belongs_to :question
	# belongs_to :tag
end