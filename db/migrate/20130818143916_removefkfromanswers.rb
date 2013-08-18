class Removefkfromanswers < ActiveRecord::Migration
  def up
    remove_column :answers, :question_id
  end
end
