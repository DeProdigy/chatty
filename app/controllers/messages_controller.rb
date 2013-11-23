class MessagesController < ApplicationController
  def index

  end

  def create
    binding.pry
    @message = Message.new

  end

end
