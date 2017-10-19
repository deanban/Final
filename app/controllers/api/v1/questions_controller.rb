class Api::V1::QuestionsController < ApplicationController

	def index
		@questions = Question.all
		render json: @questions
	end

	def create
		# byebug
		@question = Question.new(title: params[:title], user_id: params[:user_id], category_id: params[:category_id])

			# byebug

		@tag_arr = params[:tag_name]

		@tag_arr.each do |tag_title|

			@tag = Tag.find_by(name: tag_title)

			if @tag == nil
				@new_tag = Tag.create(name: tag_title)
				@question.tags << @new_tag
			else
				@question.tags << @tag
			end

		end

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
