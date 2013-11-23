class ChatroomsController < ApplicationController
  def index
  end

  def create
    @chatroom = Chatroom.new
  end

  def show
  end
end
