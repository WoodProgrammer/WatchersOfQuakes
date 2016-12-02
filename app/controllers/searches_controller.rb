class SearchesController < ApplicationController
  def index
    #@cities=Sehir.uniq.pluck(:sehir_isim)
    @cities=Quake.uniq.pluck(:place)

  end
  def search

  end

  def show
    @search=Quake.search(params[:city_name])
  end
end
