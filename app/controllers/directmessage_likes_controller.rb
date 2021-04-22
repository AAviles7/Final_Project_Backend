class DirectmessageLikesController < ApplicationController

    def index
        directmessagelikes = DirectmessageLike.all
        render json: directmessagelikes
    end

    def create
        directmessagelike = DirectmessageLike.create!({
            user_id: permitted_params['user_id'],
            direct_message_id: permitted_params['direct_message_id']
        })
        render json: directmessagelike
    end

    def show
        directmessagelike = DirectmessageLike.find_by(id: params[:id])
        render json: directmessagelike
    end

    def destroy
        directmessagelike = DirectmessageLike.find_by(id: params[:id])
        directmessagelike.destroy
    end

    def permitted_params
        params.require(:directmessage_like).permit(:user_id, :direct_message_id)
    end

end
