class AddColumnToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :user, :text
    add_column :tasks, :status, :text
  end
end
