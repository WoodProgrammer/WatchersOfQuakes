require 'mysql2'

class City_Detection
class <<self
  def city_detector
      client = Mysql2::Client.new(:host=>"localhost",:username=>"root",:password=>"abcde",:database=>"watchers_of_quakes_development")
      @place=client.query("SELECT place FROM quakes")
      @city=client.query("SELECT sehir_isim FROM sehirs")
      @asd22=client.query("SELECT * FROM quakes")

      @asd22.each do |place|
          if place["city"].nil?
            p "nil" + place["place"]
            client.query("update quakes set city='YURDISI VE DENIZLER' where place LIKE '%#{ place["place"]}%'")
        end
      end

    end
  end
end

City_Detection.city_detector
