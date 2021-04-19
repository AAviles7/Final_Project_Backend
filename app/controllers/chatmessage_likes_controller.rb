class ChatmessageLikesController < ApplicationController

    def index
        chatmessagelikes = ChatmessageLike.all
        render json: chatmessagelikes
    end

    def create
        chatmessagelike = ChatmessageLike.create!({
            user_id: permitted_params['user_id'],
            chatroom_message_id: permitted_params['chatroom_message_id']
        })
        render json: chatmessagelike
    end

    def show
        chatmessagelike = ChatmessageLike.find_by(id: params[:id])
        render json: chatmessagelike
    end

    def destroy
        chatmessagelike = ChatmessageLike.find_by(id: params[:id])
        chatmessagelike.destroy
    end

    def permitted_params
        params.require(:chatmessage_like).permit(:user_id, :chatroom_message_id)
    end

end
