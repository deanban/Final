class Api::V1::QuestionsController < ApplicationController

	def index
		@questions = Question.all
		render json: @questions
	end

	def create
		# byebug
		@question = Question.new(title: params[:title], user_id: params[:user_id])


		if @question.save
			render json: @question
		else
			render json: {status: "error", code: 3000, message: "Question did not save!"}
		end
	end

	def show
		@question = Question.find(params[:id])
		render json: @question
	end

	def destroy
		@question = Question.find(params[:id])
		@question.destroy
	end

end
