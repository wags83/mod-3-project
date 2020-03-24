class FavoritesController < ApplicationController

    def create
        @favorite = Favorite.new(params[:favorite])
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
    
    
    

end
