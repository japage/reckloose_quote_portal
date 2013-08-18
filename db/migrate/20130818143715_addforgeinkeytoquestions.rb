class Addforgeinkeytoquestions < ActiveRecord::Migration
	def change
		change_table :questions do |t|
			t.integer :quote_id
		end
	end
end