class UsersController < ApplicationController

    def create
        @user = User.new(params[:user])
        if @user.save
          flash[:success] = "User successfully created"
        else
          flash[:error] = "Something went wrong"
        end
    end

    def destroy
        @user = User.find(params[:id])
        if @user.destroy
            flash[:success] = 'User was successfully deleted.'
        else
            flash[:error] = 'Something went wrong'
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
