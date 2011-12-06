class Destination < ActiveRecord::Migration
  def up
  end
  def change 
    add_column :destinations, :user_id, :integer
  end

  def down
  end
end
