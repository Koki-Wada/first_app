class AddFirstNameToUsers < ActiveRecord::Migration[5.2]
  def up
    add_column :users, :first_name, :string, default: ""
    change_column :users, :first_name, :string, null: false
  end

  def down
    remove_column :users, :first_name
  end
end
