class ChatroomMessagesController < ApplicationController

    def index
        chatroommessages = ChatroomMessage.all
        render json: chatroommessages, include: [:chatmessage_likes, :user]
    end

    # create for Action Cable
    def create
        chatroommessage = ChatroomMessage.new(permitted_params)
        chatroom = Chatroom.find(permitted_params[:chatroom_id])
        if chatroommessage.save
            serialized_data = ActiveModelSerializers::Adapter::Json.new(
                ChatroomMessageSerializer.new(chatroommessage)
            ).serializable_hash
            ChatroomMessagesChannel.broadcast_to chatroom, serialized_data
        end
        render json: serialized_data
    end

    # normal create function
    # def create
    #     chatroommessage = ChatroomMessage.create!({
    #         user_id: permitted_params['user_id'],
    #         chatroom_id: permitted_params['chatroom_id'],
    #         body: permitted_params['body'],
    #     })
    #     render json: chatroommessage
    # end

    def show
        chatroommessage = ChatroomMessage.find_by(id: params[:id])
        render json: chatroommessage, include: [:chatmessage_likes, :user]
    end

    def permitted_params
        params.require(:chatroom_message).permit(:user_id, :chatroom_id, :body)
    end

end
