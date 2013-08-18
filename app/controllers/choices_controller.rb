class ChoicesController < ApplicationController

	def create
		@choice = Choice.new(choice_params)
		end
	end

end
