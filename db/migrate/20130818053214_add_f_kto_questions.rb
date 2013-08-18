class AddFKtoQuestions < ActiveRecord::Migration
  def change
  	change_table :users do |t|
  		t.integer :quote_id
	end
  end
end
