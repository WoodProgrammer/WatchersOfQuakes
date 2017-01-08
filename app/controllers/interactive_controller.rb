
class InteractiveController < ApplicationController
require 'mysql2'

  def page
    @quakes = Quake.all
    @hash = Gmaps4rails.build_markers(@quakes) do |quake, marker|
      marker.lat quake.latitude
      marker.lng quake.longitude
      marker.infowindow quake.place
    end
    @info_date=Quake.last
    @info_date2=Quake.first
    @quakes2 = Quake.limit(10)
    @cities=Distance.uniq.pluck(:city)
    
  end
  def hebele
    @like_keyword=Distance.search2(params[:place]).all
    @label=@like_keyword.first

  #  @qk=Quake.where("place LIKE ?", @like_keyword)
    ##call methods from Sehirs methods.
  #  @x=Sehir.date_detector
  end
end
