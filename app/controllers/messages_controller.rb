class MessagesController < ApplicationController
  def index
    messages = Message.where chatroom_id: params["chatroom_id"].to_i
    render json: messages
  end

  def create


    message = Message.new
    message.content = params[:content]
    message.chatroom_id = params[:chatroom_id]
    message.save

    redirect_to :back
  end

end
