class Sehir < ApplicationRecord
class <<self
  def date_detector
    require 'mysql2'
    city_name="Adana"
    file=open("/Users/emirozbir/Desktop/ruby/watchers_of_quakes/app/views/Adana.csv","a")
    file.puts("date,count")
    data=client.query("SELECT * FROM cities WHERE city_name LIKE '%#{city_name}%'")
    month=["November","December"]
    month.each do |month|
        data.each do |meta_data_city|
          file.puts month.to_s+","+meta_data_city["#{month.downcase}"].to_s
        end
      end
    return city_name
    end
  end
end
