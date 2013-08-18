class AddQuotesTable2 < ActiveRecord::Migration
  def change
    create_table :quotes do |t|

      t.timestamps
    end
  end
end
