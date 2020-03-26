class UsersController < ApplicationController

    def create
        user = User.new(params[:user])
        if user.save
            render json: user
        else
            render json: "Something went wrong.".to_json  
        end
    end

    def destroy
        user = User.find(params[:id])
        if user.destroy
            render json: user
        else
            render json: "Something went wrong.".to_json  
        end
    end

    def show
        user = User.find(params[:id])
        render json: user.favorites.to_json(:include => {:user => {only: :username}})
    end

    private
    
    def user_params
        params.require(:user).permit(:username)
    end

end
