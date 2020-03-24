class UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users
    end
    

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

    

end
