class DirectMessagesController < ApplicationController

    def index
        directmessages = DirectMessage.all
        render json: directmessages
    end

    # Create Function for Action Cable
    def create
        directmessage = DirectMessage.new(permitted_params)
        conversation = Conversation.find(permitted_params[:conversation_id])
        if directmessage.save
            serialized_data = ActiveModelSerializers::Adapter::Json.new(
                DirectMessageSerializer.new(directmessage)
            ).serializable_hash
            DirectMessagesChannel.broadcast_to conversation, serialized_data
            head :ok
        end
    end

    # Normal Create Function
    # def create
    #     directmessage = DirectMessage.create!({
    #         sender_id: permitted_params['sender_id'],
    #         conversation_id: permitted_params['conversation_id'],
    #         body: permitted_params['body']
    #     })
    #     render json: directmessage
    # end

    def show
        directmessage = DirectMessage.find_by(id: params[:id])
        render json: directmessage
    end

    def permitted_params
        params.require(:direct_message).permit(:user_id, :conversation_id, :body)
    end

end
