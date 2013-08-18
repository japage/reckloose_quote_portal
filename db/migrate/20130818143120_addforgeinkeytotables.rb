class Addforgeinkeytotables < ActiveRecord::Migration
	def change
		change_table :questions do |t|
			t.integer :quote_id
		end
	end

	def change
		change_table :quotes do |t|
			t.string :user_id
		end
	end

	def change
		change_table :answers do |t|
			t.string :question_id
		end
	end
end
