class ChatroomMessagesController < ApplicationController

    def index
        chatroommessages = ChatroomMessage.all
        render json: chatroommessages, include: [:chatmessage_likes, :user]
    end

    def create
        chatroommessage = ChatroomMessage.new(permitted_params)
        chatroom = Chatroom.find(permitted_params[:chatroom_id])
        if chatroommessage.save
            serialized_data = ActiveModelSerializers::Adapter::Json.new(
                ChatroomMessageSerializer.new(chatroommessage)
            ).serializable_hash
            ChatroomMessagesChannel.broadcast_to chatroom, serialized_data
            head :ok
        end
    end

    def show
        chatroommessage = ChatroomMessage.find_by(id: params[:id])
        render json: chatroommessage, include: [:chatmessage_likes, :user]
    end

    private
    def permitted_params
        params.require(:chatroom_message).permit(:user_id, :chatroom_id, :body)
    end

end
