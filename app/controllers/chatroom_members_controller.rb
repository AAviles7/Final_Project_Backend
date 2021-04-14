class ChatroomMembersController < ApplicationController

    def index
        chatroommembers = ChatroomMember.all
        render json: chatroommembers
    end

    def create
        chatroommember = ChatroomMember.create!({
            user_id: permitted_params['user_id'],
            chatroom_id: permitted_params['chatroom_id']
        })
        render json: chatroommember
    end

    def show
        chatroommember = ChatroomMember.find_by(id: params[:id])
        render json: chatroommember
    end

    def permitted_params
        params.require(:chatroommember).permit(:user_id, :chatroom_id)
    end

end
