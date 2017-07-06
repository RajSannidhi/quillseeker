class PoetsController < ApplicationController

  def index
    @poets = Poet.all
  end

end
