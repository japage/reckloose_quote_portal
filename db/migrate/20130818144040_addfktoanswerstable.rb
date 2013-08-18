class Addfktoanswerstable < ActiveRecord::Migration
  def change
		change_table :answers do |t|
			t.integer :question_id
		end
	end
end
