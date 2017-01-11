class Quake < ApplicationRecord
require 'terminal-notifier'
require 'date'
gem "mysql2"
client = Mysql2::Client.new(:host=>"localhost",:username=>"root",:password=>"abcde",:database=>"watchers_of_quakes_development")
  class <<self
    def search(city_name)
  #  quake=Quake.all
    dep=Distance.all
    dep=dep.where(["city LIKE ?","%#{city_name}%"]) if city_name.present?

    return dep
    end
  end
  def asdfinder
    g = GeoIP.new File.join(Rails.root, "db", "GeoLiteCity.dat")
    geodata = g.city("94.55.235.31")
    city="GIRESUN"#geodata[7]
    i=0
    @quakes=Quake.all
    @quakes.each do |quake|
      if i<=10
        if city.match(quake.city.to_s)&&Date.today.to_s.include?(quake.date.to_s)
          TerminalNotifier.notify(" #{quake.siddet} buyuklugunde Deprem OLDU! ", :title => 'WATCHERS OF QUAKES',
                                                :subtitle => " DEPREM #{quake.place}")

                                                i+=1
      else
      end
    end
  end
end
end
