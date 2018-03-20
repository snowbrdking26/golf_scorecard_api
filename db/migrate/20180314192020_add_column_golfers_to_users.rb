class AddColumnGolfersToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :golfers, :integer
  end
end
