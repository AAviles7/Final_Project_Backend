class ConversationsController < ApplicationController

    def index
        conversations = Conversation.all
        render json: conversations
    end

    def create
        conversation = Conversation.create!({
            sender_id: permitted_params['sender_id'],
            receiver_id: permitted_params['receiver_id']
        })
        render json: conversation
    end

    def show
        conversation = Conversation.find_by(id: params[:id])
        render json: conversation
    end

    def permitted_params
        params.require(:conversation).permit(:sender_id, :receiver_id)
    end

end
