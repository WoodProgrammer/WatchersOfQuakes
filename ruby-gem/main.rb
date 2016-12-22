require "mysql2"
x="Adana"
selector = Mysql2::Client.new(:host=>"localhost",:username=>"root",:password=>"abcde",:database=>"watchers_of_quakes_development")
data=selector.query("SELECT x FROM cities")
file=open("#{x}","a")
file.puts("date,count")
file.puts("")
data.each do |meta_data_city|
  file.puts(meta_data_city[].to_s+","+)
end
