class CreateChatroomTable < ActiveRecord::Migration
    def up
    create_table :chatroom do |t|
      t.timestamps
    end
  end

  def down
  end
end
