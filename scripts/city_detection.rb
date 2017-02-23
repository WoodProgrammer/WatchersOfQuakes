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

def  id_man
  client = Mysql2::Client.new(:host=>"localhost",:username=>"root",:password=>"abcde",:database=>"watchers_of_quakes_development")
  datas=client.query("SELECT * FROM QUAKES")
  city_names=client.query("SELECT * FROM sehirs")

  city_names.each do |city|

    x=city['sehir_isim'].to_s
    y=city['id'].to_i
    client.query("UPDATE quakes SET city_id=#{y} WHERE city LIKE '%#{x}%'  ")
  end
    client.query("UPDATE quakes SET city_id = 99 WHERE city LIKE '%YURDISI VE DENIZLER%'")
end

City_Detection.city_detector
id_man()
