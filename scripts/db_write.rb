require 'mysql2'
require 'date'
client = Mysql2::Client.new(:host=>"localhost",:username=>"root",:password=>"abcde",:database=>"watchers_of_quakes_development")
client.query("INSERT INTO quakes(date,longitude,latitude) VALUES()")
