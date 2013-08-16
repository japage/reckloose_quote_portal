class QuotesController < ApplicationController
	
	def new
		@answer = Answer.new
		@quote = Quote.new
		@questions
	end

	before_filter :authenticate_user!, :only => [:create,:show,:new,:destroy]

	@questions = [
		"Question 1",
		"Question 2",
	]

	def index
    	@quotes = Quote.all
  	end

	def show
		@quote = Quote.find params[:id]

		["Question 1", "Question 2"]
	end

	def update
		@quote = Quote.new
		
	end

	def destroy
		@quote.destroy
	end

	def create
		@quote = Quote.new(user_id: current_user.id)
		
		params["answer"].each do |answer| 
			Answer.create(quote_id: @quote.id, value: answer["value"]) 
		end
 	end

private

    def quotes_params
      params.require(:answer).permit(:value)
    end

end
