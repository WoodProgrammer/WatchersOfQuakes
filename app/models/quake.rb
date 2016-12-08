class Quake < ApplicationRecord
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
end
