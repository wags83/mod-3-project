class FavoritesController < ApplicationController

    def create
        favorite = Favorite.new(favorite_params)
        if favorite.save
            render json: favorite.to_json(:include => :country)
        else
          render json: "Something went wrong.".to_json
        end
    end

    def destroy
        favorite = Favorite.find(params[:id])
        if favorite.destroy
            render json: favorite.to_json(:include => :country)
        else
            render json: "Something went wrong.".to_json        
        end
    end

    private
    
    def favorite_params
        params.require(:favorite).permit(:user_id, :country_id)
    end

end
