class Country < ApplicationRecord
    has_many :days

    def self.add_csv_data(filepath)
        data = CSV.read(filepath, headers: true)
        data.each do |row|
            if row[0]
                country_region = row[1] + " - " + row[0]
            else 
                country_region = row[1]
            end
            
            country_id = Country.find_or_create_by(name: country_region).id
            
            date = row[2]
            cases = row[3]
            deaths = row[4]
            recovered = row[5]
            
            Day.create(country_id: country_id, date: date, cases: cases, deaths: deaths, recovered: recovered)
        end
    end
    
    def self.add_all_files_csv_data(folderpath)
        directory = Dir["#{folderpath}/*.csv"]
        directory.each do |filepath|
            add_csv_data(filepath)
        end
    end

    def self.update_latest_data
        LatestDatum.all.each {|data| data.destroy}
        Country.all.each do |country|
            sorted_days = country.days.sort{|a, b| b.date <=> a.date}

            country_id = country.id
            date = sorted_days[0].date
            cases = sorted_days[0].cases
            deaths = sorted_days[0].deaths
            recovered = sorted_days[0].recovered

            LatestDatum.create(country_id: country_id, date: date, cases: cases, deaths: deaths, recovered: recovered)
        end
    end

end
