class AddLastNameToUsers < ActiveRecord::Migration[5.2]
  def up
    add_column :users, :last_name, :string, default: ""
    change_column :users, :last_name, :string, null: false
  end

  def down
    remove_column :users, :last_name
  end
end
