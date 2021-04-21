class DirectMessagesController < ApplicationController

    def index
        directmessages = DirectMessage.all
        render json: directmessages, include: [:user, :conversation]
    end

    def create
        directmessage = DirectMessage.create!({
            sender_id: permitted_params['sender_id'],
            conversation_id: permitted_params['conversation_id'],
            body: permitted_params['body']
        })
        render json: directmessage, include: [:user, :conversation]
    end

    def show
        directmessage = DirectMessage.find_by(id: params[:id])
        render json: directmessage, include: [:user, :conversation]
    end

    def permitted_params
        params.require(:direct_message).permit(:sender_id, :conversation_id, :body)
    end

end
