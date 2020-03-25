class FavoritesController < ApplicationController

    def create
        @favorite = Favorite.new(favorite_params)
        if @favorite.save
          flash[:success] = "Favorite successfully created"
        else
          flash[:error] = "Something went wrong"
        end
    end

    def destroy
        @favorite = Favorite.find(params[:id])
        if @favorite.destroy
            flash[:success] = 'Favorite was successfully deleted.'
        else
            flash[:error] = 'Something went wrong'
        end
    end

    private
    
    def favorite_params
        params.require(:favorite).permit(:user_id, :country_id)
    end

end
