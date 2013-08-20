class Quote < ActiveRecord::Base
	has_many :choices
	has_many :answers, :through => :choices

	belongs_to :user
end
