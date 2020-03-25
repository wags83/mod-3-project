class Country < ApplicationRecord
    has_many :days
    has_one :latest_data

    def self.add_csv_data(folderpath, filename)
        data = CSV.read("#{folderpath}/#{filename}", headers: true)
        data.each do |row|
            
            filedate = filename.split(".")[0]

            if filedate < "03-22-2020"
                country = row[1]
                date = filedate
                cases = row[3].to_i
                deaths = row[4].to_i
                recovered = row[5].to_i
            else
                country = row[3]
                date = filedate
                cases = row[7].to_i
                deaths = row[8].to_i
                recovered = row[9].to_i
            end

            if country == "Mainland China" || country == "Hong Kong" || country == "Hong Kong SAR" || country == "Macao SAR" || country == "Macau"
                country = "China"
            end

            if country == "Bahamas, The" || country == "The Bahamas"
                country = "Bahamas"
            end

            if country == "Congo (Brazzaville)" || country == "Congo (Kinshasa)" 
                country = "Republic of the Congo"
            end

            if country == "Gambia, The" || country == "The Gambia"
                country = "Gambia"
            end

            if country == "Iran (Islamic Republic of)" 
                country = "Iran"
            end

            if country == "Korea, South" || country == "Republic of Korea"
                country = "South Korea"
            end

            if country == "Taipei and environs" || country == "Taiwan*" 
                country = "Taiwan"
            end
            
            if country == "United Kingdom" 
                country = "UK"
            end

            if country == "Viet Nam" 
                country = "Vietnam"
            end
            
            if country == "Republic of Ireland" 
                country = "Ireland"
            end

            if country == "Russian Federation" 
                country = "Russia"
            end
            
            if country == "occupied Palestinian territory" 
                country = "Palestine"
            end

            country_id = Country.find_or_create_by(name: country).id
            
            Day.find_or_create_by(country_id: country_id, date: date)

            day = Day.find_by(country_id: country_id, date: date)

            if day.cases == nil
                day.update(cases: cases, deaths: deaths, recovered: recovered)
            else
                day.update(cases: day.cases + cases, deaths: day.deaths + deaths, recovered: day.recovered + recovered)
            end

                
        end
    end
    
    def self.add_all_files_csv_data(folderpath)
        directory = Dir["#{folderpath}/*.csv"]
        directory.each do |filepath|
            filename = filepath.gsub("#{folderpath}/", "")
            add_csv_data(folderpath, filename)
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
