class Distance < ApplicationRecord
    class <<self
      def search(city_name,maximum_distance,minimum_distance)
    #  quake=Quake.all
      dep=Distance.all
      @city_name_graph=dep.where(["city LIKE ?","%#{city_name}%"])
      dep=dep.where(["city LIKE ?","%#{city_name}%"])
      dep=dep.where(["distance <= ?",maximum_distance])
      dep=dep.where(["distance >= ?",minimum_distance])
      return dep
      end

      def search2(place)
    #  quake=Quake.all
      dep=Quake.all
      dep=dep.where(["place LIKE ?","%#{place}%"])
      return dep
      end
    end
end
