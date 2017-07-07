class PoetsController < ApplicationController

  def index
    @poets = Poet.all
  end

  def new
    @poet = Poet.new
  end

  def create
    @poet = Poet.create(poet_params)
    if @poet.valid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @poet = Poet.find(params[:id])
  end

  def edit
    @poet = Poet.find(params[:id])
  end

  def update
    @poet = Poet.find(params[:id])
    @poet.update_attributes(poet_params)
    if @poet.valid?
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @poet = Poet.find(params[:id])
    @poet.destroy
    redirect_to root_path
  end

  private

  def poet_params
     params.require(:poet).permit(:name, :description, :dates)
  end

end
