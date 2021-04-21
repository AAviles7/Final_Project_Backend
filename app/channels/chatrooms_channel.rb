class ChatroomsChannel < ApplicationCable::Channel
  def subscribed
    # chatroom = Chatroom.find_by(id: params[:id])
    # stream_for chatroom
    stream_from "chatrooms_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
  
end
