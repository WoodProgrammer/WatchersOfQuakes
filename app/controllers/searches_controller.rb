class SearchesController < ApplicationController
  def index
    #@cities=Sehir.uniq.pluck(:sehir_isim)
    @cities=Distance.uniq.pluck(:city)
    @artist_data=Quake.last
    @artist_data2=Quake.first

    @deneme=Distance.last
  end
  def search

  end

  def show
    @search=Distance.search(params[:city_name],params[:maximum_distance],params[:minimum_distance]).all

  end
end
