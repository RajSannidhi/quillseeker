class PoemsController < ApplicationController

  def create
    @poet = Poet.find(params[:poet_id])
    @poet.poems.create(poem_params)
    redirect_to poet_path(@poet)
  end

  private

  def poem_params
    params.require(:poem).permit(:title, :poemdate, :poemtext)
  end
end