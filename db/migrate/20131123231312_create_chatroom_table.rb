class CreateChatroomTable < ActiveRecord::Migration
  def up
    create_table :chatrooms do |t|
      t.timestamps
    end
  end

  def down
  end
end
