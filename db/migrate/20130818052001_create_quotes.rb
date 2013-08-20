class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.text :name
      t.integer :user_id

      t.timestamps
    end
  end
end
