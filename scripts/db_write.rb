
require 'mysql2'
require 'date'
client = Mysql2::Client.new(:host=>"localhost",:username=>"root",:password=>"abcde",:database=>"watchers_of_quakes_development")
#client.query("DELETE FROM quakes")
#client.query("INSERT INTO quakes(date,longitude,latitude) VALUES()")
@cities=client.query("SELECT * FROM cities")
@distance_city=client.query("SELECT * FROM distances")
@quake_city=client.query("SELECT city FROM quakes")

@quake_city.each do |dcity|
    @cities.each do |city|
          client.query("update quakes set city_id='#{city["id"]}' where city LIKE '%#{city["city_name"]}%'")
    end
end
