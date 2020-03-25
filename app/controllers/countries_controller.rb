class CountriesController < ApplicationController

    def index
        countries = Country.all
        render json: countries
    end
    
    def show
        country = Country.find(params[:id])
        sorted_by_date = country.days.sort{|a,b| a.date <=> b.date}
        render json: sorted_by_date
    end
    
    def latest_data
        latest_data = LatestDatum.all
        render json: latest_data.to_json(:include => {:country => {only: :name}})
    end

end
