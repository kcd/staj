class AddLastnameOnUsers < ActiveRecord::Migration
  def up
    add_column :users, :last_name, :string
  end

  def down
  end
end
