class ChatroomsController < ApplicationController
    def index
        chatrooms = Chatroom.all
        render json: chatrooms, include: [:users, :chatroom_messages]
    end

    def create
        chatroom = Chatroom.create!({
            name: permitted_params['name']
        })
        render json: chatroom
    end

    def show
        chatroom = Chatroom.find_by(id: params[:id])
        render json: chatroom, include: [:users, :chatroom_messages]
    end

    def permitted_params
        params.require(:chatroom).permit(:name)
    end
end
