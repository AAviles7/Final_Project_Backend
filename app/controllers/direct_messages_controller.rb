class DirectMessagesController < ApplicationController

    def index
        directmessages = DirectMessage.all
        render json: directmessages
    end

    def create
        directmessage = DirectMessage.create!({
            sender_id: permitted_params['sender_id'],
            reciever_id: permitted_params['reciever_id'],
            body: permitted_params['body']
        })
        render json: directmessage
    end

    def show
        directmessage = DirectMessage.find_by(id: params[:id])
        render json: directmessage
    end

    def permitted_params
        params.require(:directmessage).permit(:sender_id, :reciever_id, :body)
    end

end
