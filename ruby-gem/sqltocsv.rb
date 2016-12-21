require 'mysql2'
require 'date'
months=["January","February","March","April","May","June","July","August","September","October","November","December"]

client = Mysql2::Client.new(:host=>"localhost",:username=>"root",:password=>"abcde",:database=>"watchers_of_quakes_development")
file=open("quake_data.csv","a+")
@datas=client.query("SELECT * FROM quakes")
file.write("date"+","+"siddet"+","+"city")
file.puts(" ")
@datas.each do |data|
    x=Date._parse(data["date"].to_s)
    file.puts(months[x[:mon]-1].to_s+","+data["siddet"].to_s+","+data["city"].to_s+data["city_id"].to_s+"\n")

end
