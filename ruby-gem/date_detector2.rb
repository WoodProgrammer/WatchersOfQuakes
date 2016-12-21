
require 'mysql2'
def date_finder(city_name,month)
  i=0
  file=open("quake_data.csv","r")
  file.each do |line|
    if line.include?(city_name)&&line.include?(month)
      i=i+1
    end
  end
  return i
end


month=["November","December"]
selector = Mysql2::Client.new(:host=>"localhost",:username=>"root",:password=>"abcde",:database=>"watchers_of_quakes_development")
x=selector.query("SELECT city_name FROM cities")

month.each do |month|
  x.each do |city|
    t=city["city_name"].to_s
    puts (t.upcase)+"'da'" + month.to_s + "ayında" + date_finder(t.upcase,month).to_s+"deprem olmuştur."
    puts
  end
end
