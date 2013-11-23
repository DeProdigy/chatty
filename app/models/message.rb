class Message < ActiveRecord::Base
  attr_accessible :content

  belongs_to :chatroom
end