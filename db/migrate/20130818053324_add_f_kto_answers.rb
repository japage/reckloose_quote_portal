class AddFKtoAnswers < ActiveRecord::Migration
  def change
  	change_table :users do |t|
  		t.integer :question_id
	end
  end
end