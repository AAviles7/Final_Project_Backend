class ChatroomMessagesChannel < ApplicationCable::Channel
  def subscribed
    chatroom = Chatroom.find(params[:chatroom_id])
    stream_for chatroom
  end

  def unsubscribed
  end

end
