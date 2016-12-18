class QuakesController < ApplicationController

def index
    @x=Quake.all
    @quakes = Quake.all
    @hash = Gmaps4rails.build_markers(@quakes) do |quake, marker|
      marker.lat quake.latitude
      marker.lng quake.longitude
      marker.infowindow quake.place

    end
end
def show
    @dep=Quake.find(params[:id])
end

end
