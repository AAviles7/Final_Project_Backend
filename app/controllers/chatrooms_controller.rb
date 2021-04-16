class ChatroomsController < ApplicationController
    def index
        chatrooms = Chatroom.all
        render json: chatrooms, include: [:users, :chatroom_messages]
    end

    def create
        chatroom = Chatroom.new(permitted_params)
        if chatroom.save
            serialized_data = ActiveModelSerializers::Adapter::Json.new(
                ChatroomSerializer.new(chatroom)
            ).serializable_hash
            ActionCable.server.broadcast 'chatrooms_channel', serialized_data
            head :ok
        end
    end

    def show
        chatroom = Chatroom.find_by(id: params[:id])
        render json: chatroom, include: [:users, :chatroom_messages]
    end

    def permitted_params
        params.require(:chatroom).permit(:name)
    end
end
