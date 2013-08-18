class RemoveFkidioTfromuserstable < ActiveRecord::Migration
  def up
    remove_column :users, :user_id
    remove_column :users, :quote_id
    remove_column :users, :question_id
  end
end