class ChannelMembersController < ApplicationController

    def index
        channelmembers = ChannelMember.all
        render json: channelmembers
    end

    def create
        channelmember = ChannelMember.create!({
            user_id: permitted_params['user_id'],
            channel_id: permitted_params['channel_id']
        })
        render json: channelmember
    end

    def show
        channelmember = ChannelMember.find_by(id: params[:id])
        render json: channelmember
    end

    def permitted_params
        params.require(:channelmember).permit(:user_id, :channel_id)
    end

end
