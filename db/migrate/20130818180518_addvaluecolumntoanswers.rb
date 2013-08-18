class Addvaluecolumntoanswers < ActiveRecord::Migration
  def change
  	change_table :answers do |t|
  		t.integer :value
	end
  end
end
