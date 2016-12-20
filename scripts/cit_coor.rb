require 'mysql2'

con1 = Mysql2::Client.new(:host=>"localhost",:username=>"root",:password=>"abcde",:database=>"bookstore_development")
con2 = Mysql2::Client.new(:host=>"localhost",:username=>"root",:password=>"abcde",:database=>"watchers_of_quakes_development")

cit1=con1.query("SELECT * FROM deprem_iller")

cit1.each do |city_co_X|
        con2.query("update sehirs set lon=#{city_co_X['il_y']} where sehir_isim like '%#{city_co_X['il_ad']}%' ")
        con2.query("insert into cities(city_name) values('#{city_co_X['il_ad']}')")
end
