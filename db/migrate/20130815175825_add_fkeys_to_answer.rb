class AddFkeysToAnswer < ActiveRecord::Migration
  def change
	change_table :answers do |t|
  		t.integer :question_id
  		t.integer :quote_id
	end
  end
end
