require 'mysql2'
client = Mysql2::Client.new(:host=>"localhost",:username=>"root",:password=>"abcde",:database=>"watchers_of_quakes_development")
file=open("quake_data.csv","a+")
@columns = client.query("SHOW COLUMNS FROM quakes")
@datas=client.query("SELECT * FROM quakes")
@columns.each do |column|
  p column['Field']
  file.write(column['Field'].to_s+",")
end
i=0
@datas.each do |data|
  if i==0
    file.puts(" ")
  else
    file.puts(data["date"].to_s+","+data["latitude"].to_s+","+data["longitude"].to_s+","+data["id"].to_s+","+data["place"].to_s+","+data["siddet"].to_s+","+data["city"].to_s+","+data["city_id"].to_s+"\n")

  end
  i=i+1
end
