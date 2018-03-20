class RemoveFieldNameFromTableName < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :golfers, :integer
  end
end
