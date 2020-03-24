class RegionsController < ApplicationController

    def index
        regions = Region.all
        render json: regions
    end
    
    def show
        region = region.find(params[:id])
        render json: region.days
    end
    

end
