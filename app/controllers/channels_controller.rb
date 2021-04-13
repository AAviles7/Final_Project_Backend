class ChannelsController < ApplicationController

    def index
        channels = Channel.all
        render json: channels#, include: [:users]
    end

    def create
        channel = Channel.create!({
            name: permitted_params['name']
        })
        render json: channel
    end

    def show
        channel = Channel.find_by(id: params[:id])
        render json: channel#, include: [:users]
    end

    def permitted_params
        params.require(:channel).permit(:name)
    end

end
