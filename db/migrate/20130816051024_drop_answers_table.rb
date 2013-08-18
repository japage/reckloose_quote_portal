class DropAnswersTable < ActiveRecord::Migration
  def down
    drop_table :answers
  end
end
