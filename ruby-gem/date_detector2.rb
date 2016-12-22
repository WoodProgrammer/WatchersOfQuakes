require 'mysql2'
#def date_finder(city_name,month)
#  i=0
#  file=open("quake_data.csv","r")
#  file.each do |line|
#    if line.include?(city_name)&&line.include?(month)
#      i=i+1
#    end
#  end
#  return i
#end
month=["November","December"]
selector = Mysql2::Client.new(:host=>"localhost",:username=>"root",:password=>"abcde",:database=>"watchers_of_quakes_development")
#x=selector.query("SELECT city_name FROM cities")

#month.each do |month|
#  x.each do |city|
#    t=city["city_name"].to_s
    #puts (t.upcase)+"'da'" + month.to_s + "ayında" + date_finder(t.upcase,month).to_s+"deprem olmuştur."
#    selector.query("update cities set #{month.downcase}=#{date_finder(t.upcase,month)} where city_name LIKE '%#{t}%'")
#  end
#end

x="Mersin"
file=open("#{x}.csv","a")
file.puts("date,count")
data=selector.query("SELECT * FROM cities WHERE city_name LIKE '%#{x}%'")
month.each do |month|
  data.each do |meta_data_city|
    file.puts month.to_s+","+meta_data_city["#{month.downcase}"].to_s
  end
end
