class Message < ActiveRecord::Base
  attr_accessible :content, :chatroom_id

  belongs_to :chatroom
end