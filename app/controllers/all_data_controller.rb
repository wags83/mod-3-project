class AllDataController < ApplicationController

    def index
        all_data = AllDatum.all
        render json: all_data
    end
    
end
