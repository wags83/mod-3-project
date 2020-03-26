class DaysController < ApplicationController

    def index
        days = Day.all
        render json: days
    end

    def create
        day = Day.new(day_params)
        if day.save
          render json: day
        else
          render json: "Something went wrong.".to_json   
        end
    end

    def destroy
        day = Day.find(params[:id])
        if day.destroy
            render json: day
        else
            render json: "Something went wrong.".to_json    
        end
    end
    
    private
    
    def day_params
        params.require(:day).permit(:country_id, :date, :cases, :deaths, :recovered)
    end

end
