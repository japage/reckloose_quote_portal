class Removenamefromquotes < ActiveRecord::Migration
  def up
    remove_column :quotes, :name
  end
end
