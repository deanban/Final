class Api::V1::AnswersController < ApplicationController
	
	# def index
	# 	@answers = Answer.all
	# 	render json: @answers
	# end

	def create
		# byebug
		@answer = Answer.new(title: params[:title], user_id: params[:user_id], question_id: params[:question_id])

		if @answer.save
			render json: @answer.to_json
		else
			render json: {status: "error", code: 3000, message: "Answer did not save!"}
		end
	end

	# def show
	# 	@answer = Answer.find(params[:id])
	# 	render json: @answer.to_json
	# end

	def destroy
		@answer = Answer.find(params[:id])
		@answer.destroy
	end
end
