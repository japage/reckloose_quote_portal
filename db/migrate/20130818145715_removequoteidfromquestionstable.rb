class Removequoteidfromquestionstable < ActiveRecord::Migration
  def up
    remove_column :questions, :quote_id
  end
end
