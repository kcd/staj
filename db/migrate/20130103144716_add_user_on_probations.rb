class AddUserOnProbations < ActiveRecord::Migration
  def up
    add_column :probations, :user_id, :integer
  end

  def down
  end
end
