class ChannelMessagesController < ApplicationController

    def index
        channelmessages = ChannelMessage.all
        render json: channelmessages
    end

    def create
        channelmessage = ChannelMessage.create!({
            user_id: permitted_params['user_id'],
            channel_id: permitted_params['channel_id'],
            body: permitted_params['body']
        })
        render json: channelmessage
    end

    def show
        channelmessage = ChannelMessage.find_by(id: params[:id])
        render json: channelmessage
    end

    def permitted_params
        params.require(:channelmessage).permit(:user_id, :channel_id, :body)
    end

end
