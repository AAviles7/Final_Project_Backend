class ChatroomMessagesController < ApplicationController

    def index
        chatroommessages = ChatroomMessage.all
        render json: chatroommessages
    end

    def create
        chatroommessage = ChatroomMessage.create!({
            user_id: permitted_params['user_id'],
            chatroom_id: permitted_params['chatroom_id'],
            body: permitted_params['body']
        })
        render json: chatroommessage
    end

    def show
        chatroommessage = ChatroomMessage.find_by(id: params[:id])
        render json: chatroommessage
    end

    def permitted_params
        params.require(:chatroommessage).permit(:user_id, :chatroom_id, :body)
    end

end
