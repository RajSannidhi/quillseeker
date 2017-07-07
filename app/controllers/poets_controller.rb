class PoetsController < ApplicationController

  def index
    @poets = Poet.all
  end

def new
  @poet = Poet.new
end

end
