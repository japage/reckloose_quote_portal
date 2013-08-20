class Question < ActiveRecord::Base
	# attr_accessor :name, :answers_attributes	

	has_many :answers
	has_many :choices, :through => :answer
	accepts_nested_attributes_for :answers, allow_destroy: true
end
