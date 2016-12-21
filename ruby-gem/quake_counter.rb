require 'mysql2'
@client = Mysql2::Client.new(:host=>"localhost",:username=>"root",:password=>"abcde",:database=>"watchers_of_quakes_development")

def counter(city_name)
  t=0
  x=@client.query("SELECT * FROM quakes WHERE city LIKE '%#{city_name}%'")
  x.each do |var|
    t=t+1
  end
  return t
end
id=0
@cities=@client.query("SELECT * FROM cities")
@quakes=@client.query("SELECT * FROM quakes")
@cities.each do |city|
  id=id+1
  t=counter(city["city_name"].upcase)
  @client.query("update cities set quake_count=#{t} where id=#{id}")

end
puts "Sinop".upcase
