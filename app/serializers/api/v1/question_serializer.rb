class Api::V1::QuestionSerializer < ActiveModel::Serializer
  
  attributes :id, :title, :user_id

  has_many :answers
  # belongs_to :user
  
  has_many :tags

  belongs_to :category

end
