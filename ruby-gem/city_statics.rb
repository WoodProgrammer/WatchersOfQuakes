require "mysql2"
selector = Mysql2::Client.new(:host=>"localhost",:username=>"root",:password=>"abcde",:database=>"watchers_of_quakes_development")
x=selector.query("SELECT * FROM cities")
file=open("city_stats.csv","a+")
file.write("city_name,dep_count")
file.puts("  ")
x.each do |x|
  file.puts(x["city_name"].to_s+","+x["quake_count"].to_s)
end
file.close()
