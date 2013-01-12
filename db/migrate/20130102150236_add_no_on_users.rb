class AddNoOnUsers < ActiveRecord::Migration
  def up
    add_column :users, :no, :string
  end

  def down
  end
end
