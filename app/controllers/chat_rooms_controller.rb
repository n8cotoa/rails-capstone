class ChatRoomsController < ApplicationController
  def show
    binding.pry
    @chat_room = ChatRoom.includes(:messages).find(params[:id])
    @message = Message.new
  end
end