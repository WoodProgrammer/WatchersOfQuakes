class QuakesController < ApplicationController
def index
    @x=Quake.all
end
def show
    @dep=Quake.find(params[:id])
end

end
