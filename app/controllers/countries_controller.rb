class CountriesController < ApplicationController

    def index
        countries = Country.all
        render json: countries
    end
    
    def show
        country = Country.find(params[:id])
        render json: country.days
    end
    
    def latest_data
        latest_data = LatestDatum.all
        render json: latest_data
    end

end
