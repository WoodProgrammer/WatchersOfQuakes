require 'mysql2'
client = Mysql2::Client.new(:host=>"localhost",:username=>"root",:password=>"abcde",:database=>"watchers_of_quakes_development")
datas=client.query("SELECT * FROM QUAKES")
city_names=client.query("SELECT * FROM sehirs")

city_names.each do |city|
  puts city['sehir_isim']
  puts city['id']
  x=city['sehir_isim'].to_s
  y=city['id'].to_i
  client.query("UPDATE quakes SET city_id=#{y} WHERE city LIKE '%#{x}%'  ")
end

#city_names.each do |city|

#  client.query("UPDATE quakes SET city_id=city['id'] WHERE city LIKE '%city['sehir_isim']%'")
#end
