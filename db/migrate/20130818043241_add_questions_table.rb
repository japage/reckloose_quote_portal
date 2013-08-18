class AddQuestionsTable < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :quote_id
      t.text :content

      t.timestamps
    end
  end
end
