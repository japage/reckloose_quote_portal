class AddColumnToQuote < ActiveRecord::Migration
  def change
  	change_table :quotes do |t|
  		t.integer :user_id
	end
  end
end
