require 'mysql2'

class City_Detection
class <<self
  def city_detector
      client = Mysql2::Client.new(:host=>"localhost",:username=>"root",:password=>"abcde",:database=>"watchers_of_quakes_development")
      @place=client.query("SELECT place FROM quakes")
      @city=client.query("SELECT sehir_isim FROM sehirs")
      @place.each do |place|
        @city.each do  |city|
          if place["place"].include?(city["sehir_isim"].upcase)
              client.query("update quakes set city='#{city["sehir_isim"]}' where place LIKE '%#{city["sehir_isim"]}%'")
              next
          else

          end
        end
      end
    end
  end
end

City_Detection.city_detector
