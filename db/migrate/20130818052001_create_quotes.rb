class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.text :name

      t.timestamps
    end
  end
end
