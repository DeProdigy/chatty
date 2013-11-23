class ChatroomsController < ApplicationController
  def index
  end

  def create
    @chatroom = Chatroom.create

    redirect_to @chatroom
  end

  def show

  end
end
