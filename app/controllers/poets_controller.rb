class PoetsController < ApplicationController

  def index
    @poets = Poet.all
  end

  def new
    @poet = Poet.new
  end

  def create
    Poet.create(poet_params)
    redirect_to root_path
  end

  def show
    @poet = Poet.find(params[:id])
  end

  def edit
    @poet = Poet.find(params[:id])
  end

  private

  def poet_params
     params.require(:poet).permit(:name, :description, :dates)
  end

end
