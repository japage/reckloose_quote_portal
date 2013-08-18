class RemoveQuestionsTable2 < ActiveRecord::Migration
  def up
    drop_table :questions
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end

