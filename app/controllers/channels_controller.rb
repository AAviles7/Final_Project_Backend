class ChannelsController < ApplicationController

    def index
        channels = Channel.all
        render json: channels, include: [:users, :channel_messages]
    end

    def create
        channel = Channel.create!({
            name: permitted_params['name']
        })
        render json: channel
    end

    def show
        channel = Channel.find_by(id: params[:id])
        render json: channel, include: [:users, :channel_messages]
    end

    def permitted_params
        params.require(:channel).permit(:name)
    end

end
