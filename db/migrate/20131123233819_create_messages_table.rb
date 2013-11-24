class CreateMessagesTable < ActiveRecord::Migration
  def up
    create_table :messages do |t|
      t.string :name
      t.text :content
      t.integer :chatroom_id
      t.timestamps
    end
  end

  def down
  end
end
