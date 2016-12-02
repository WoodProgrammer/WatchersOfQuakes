class Quake < ApplicationRecord
gem "mysql2"
client = Mysql2::Client.new(:host=>"localhost",:username=>"root",:password=>"abcde",:database=>"watchers_of_quakes_development")
  class <<self
    def search(search)
    quake=Quake.all
    quake=quake.where(["place LIKE ?","%#{search}%"]) if search.present?
    return quake
    end
  end
end
