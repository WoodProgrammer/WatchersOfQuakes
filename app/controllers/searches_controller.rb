class SearchesController < ApplicationController
  def search
  end

  def show
    @search=Quake.search(params[:search])
  end
end
