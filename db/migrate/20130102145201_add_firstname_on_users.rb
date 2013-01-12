class AddFirstnameOnUsers < ActiveRecord::Migration
  def up
    add_column :users, :first_name, :string
  end

  def down
  end
end
