class InteractiveController < ApplicationController
  def page
    @quakes = Quake.all
    @hash = Gmaps4rails.build_markers(@quakes) do |quake, marker|
      marker.lat quake.latitude
      marker.lng quake.longitude
      marker.infowindow quake.place
    end
    @info_date=Quake.last
    @info_date2=Quake.first
  end
end
