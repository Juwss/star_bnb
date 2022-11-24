class StarsController < ApplicationController

  def index
    @stars = Star.all
  end

  def show
    @star = Star.find(params[:id])
  end

  def new
    @star = Star.new
  end

  def create
    @star = Star.new(star_params)
    if @star.save
      redirect_to star_path(@star)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def star_params
    params.require(:star).permit(:last_name, :first_name, :description, :type, :price, :photo)
  end

end
