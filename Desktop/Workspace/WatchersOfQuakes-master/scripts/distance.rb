##HAVERSINE FORMULA
require "mysql2"
dis_client = Mysql2::Client.new(:host=>"localhost",:username=>"root",:password=>"abcde",:database=>"watchers_of_quakes_development")

R=6371##radius of the earth.
def pow(x,y)
  tot=1
  for i in 1..y
    tot*=x
    end
    return tot
end

def distance_finder(lat1,lon1,lat2,lon2)
    distance_between_lon=lon2-lon1
    distance_between_lat=lat2-lat1
    a=pow(Math.sin(distance_between_lat/2),2)+(Math.cos(lat1)*Math.cos(lat2)*(pow((Math.sin(distance_between_lon/2)),2)))
    c=2 * Math.atan2( Math.sqrt(a), Math.sqrt(1-a) )
    distance=R*c
  return a*1000 ##kilometer
end

quakes_info=dis_client.query("SELECT * FROM quakes")
city_info=dis_client.query("SELECT * FROM sehirs")

quakes_info.each do |quakes_info|
  city_info.each do |city_info|
    haversine_var=distance_finder(quakes_info['latitude'],quakes_info['longitude'],city_info['lat'],city_info['lon'])
    dis_client.query("INSERT INTO distances(city,distance,quake_place) VALUES('#{city_info['sehir_isim']}',#{haversine_var},'#{quakes_info['place']}')")
    
  end
end
