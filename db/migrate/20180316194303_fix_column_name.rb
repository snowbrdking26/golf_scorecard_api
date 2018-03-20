class FixColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :golfers, :user_id
  end
end
