class ChatRoomsController < ApplicationController
  before_action :authenticate_user!
  def show
    @chat_room = ChatRoom.includes(:messages).find(params[:id])
    @message = Message.new
  end
end