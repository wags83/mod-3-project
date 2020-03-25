class DaysController < ApplicationController

    def index
        days = Day.all
        render json: days
    end

    def create
        day = Day.new(day_params)
        if day.save
          flash[:success] = "Day successfully created"
        else
          flash[:error] = "Something went wrong"
        end
    end

    def destroy
        day = Day.find(params[:id])
        if day.destroy
            flash[:success] = 'Day was successfully deleted.'
        else
            flash[:error] = 'Something went wrong'
        end
    end
    
    private
    
    def day_params
        params.require(:day).permit(:country_id, :date, :cases, :deaths, :recovered)
    end

end
