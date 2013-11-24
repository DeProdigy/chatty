require 'rails_autolink'

class ChatroomsController < ApplicationController
  def index
  end

  def create
    @chatroom = Chatroom.create

    redirect_to @chatroom
  end

  def show
    @messages = Message.where chatroom_id: params["id"].to_i
  end
end
