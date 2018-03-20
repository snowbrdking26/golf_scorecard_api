class AddForeignKeyToGolfers < ActiveRecord::Migration[5.2]
  def change
    add_column :golfers, :user_id, :integer
  end
end
