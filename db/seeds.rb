# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Country.create(name: 'US')
Country.create(name: 'China')
Country.create(name: 'Italy')

Region.create(name: 'New York', country_id: 1)
Region.create(name: 'California', country_id: 1)
Region.create(name: 'New Jersey', country_id: 1)
Region.create(name: 'Hubei', country_id: 2)
Region.create(name: 'Hong Kong', country_id: 2)

Day.create(date: '2020-03-20', cases: 1000, deaths: 100, recovered: 300, country_id: 1)
Day.create(date: '2020-03-21', cases: 2000, deaths: 200, recovered: 400, country_id: 1)
Day.create(date: '2020-03-22', cases: 3000, deaths: 300, recovered: 500, country_id: 1)
Day.create(date: '2020-03-21', cases: 200, deaths: 50, recovered: 100, region_id: 1)
Day.create(date: '2020-03-22', cases: 300, deaths: 80, recovered: 200, region_id: 1)
Day.create(date: '2020-03-21', cases: 500, deaths: 120, recovered: 20, region_id: 2)
Day.create(date: '2020-03-22', cases: 600, deaths: 300, recovered: 50, region_id: 2)
Day.create(date: '2020-03-21', cases: 3000, deaths: 300, recovered: 500, country_id: 2)
Day.create(date: '2020-03-22', cases: 5000, deaths: 500, recovered: 600, country_id: 2)
Day.create(date: '2020-03-21', cases: 2500, deaths: 400, recovered: 1000, country_id: 3)
Day.create(date: '2020-03-22', cases: 3500, deaths: 600, recovered: 1200, country_id: 3)
