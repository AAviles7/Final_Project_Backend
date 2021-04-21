class ChatroomsController < ApplicationController
    def index
        chatrooms = Chatroom.all
        render json: chatrooms
    end

    def create
        chatroom = Chatroom.new(permitted_params)
        if chatroom.save
            serialized_data = ActiveModelSerializers::Adapter::Json.new(
                ChatroomSerializer.new(chatroom)
            ).serializable_hash
            ChatroomsChannel.broadcast_to 'chatrooms_channel', serialized_data
        end
        render json: chatroom
    end

    def show
        chatroom = Chatroom.find_by(id: params[:id])
        render json: chatroom
    end

    def permitted_params
        params.require(:chatroom).permit(:name, :workspace_id)
    end
end
