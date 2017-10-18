class Api::V1::AnswerSerializer < ActiveModel::Serializer
  attributes :id, :title, :user_id, :question_id, :votes, :total_votes

  has_many :votes
  belongs_to :user
  belongs_to :question

  def total_votes
  	object.votes.count
  end

end
