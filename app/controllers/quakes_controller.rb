class QuakesController < ApplicationController

def index
    @x=Quake.all
    @quakes = Quake.all

    @t=Quake.new
    @t.asdfinder
    

end
def show
    @dep=Quake.find(params[:id])
end

end
