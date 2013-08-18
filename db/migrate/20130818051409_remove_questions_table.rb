class RemoveQuestionsTable < ActiveRecord::Migration
  def up
    drop_table :quotes
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end

