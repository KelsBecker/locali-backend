class UsersController < ApplicationController

    def index
        users = User.all
        render json: UserSerializer.new(users)
    end

    def show 
        user = User.find(params[:id])
        render json: UserSerializer.new(user)
    end

    def update 
        user = User.find(params[:id])
        user.update(user_params)
        render json: UserSerializer.new(user)
    end

    # def create
    #     user = User.create!(user_params)
    #     # if user.valid?
    #     render json: UserSerializer.new(user)
    #     # else
    #     # render json: { errors: user.errors.full_messages }
    #     # end
    # end
    
    private 

    def user_params
        params.require(:user).permit(:name, :bio, :image_url, :username)
    end

end
