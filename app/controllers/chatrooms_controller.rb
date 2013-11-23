class ChatroomsController < ApplicationController
  def index
  end

  def create
    @chatroom = Chatroom.create

    redirect_to chatrooms_url(@chatroom)
  end

  def show
  end
end
