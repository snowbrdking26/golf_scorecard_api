class AddColumnGolfersToUsers2 < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :golfers, :string
  end
end
