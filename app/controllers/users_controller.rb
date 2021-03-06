class UsersController < ApplicationController

    def index 
        users = User.all
        render json: users
    end 

    def create
        user = User.create!({ 
            username: permitted_params['username'], 
            password: permitted_params['password'],
            email: permitted_params['email'],
            display_name: permitted_params['display_name'],
            bio: permitted_params['bio'],
            phone_number: permitted_params['phone_number'],
        })
        render json: user
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user
    end

    def edit
        user = User.find_by(id: params[:id])
        render json: user
    end

    def update
        user = User.find_by(id: params[:id])
        user.update(permitted_params)
        render json: user
    end

    def permitted_params
        params.require(:user).permit(:username, :password, :email, :display_name, :bio, :phone_number)
    end

    def token_authenticate
        token = request.headers["Authorization"]
        user = User.find(decoded_token[0]['user_id'])
        render json:user
    end 

end
