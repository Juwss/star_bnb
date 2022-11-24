class StarsController < ApplicationController

  def index
    if params[:query].present?
      @stars = Star.search_by_name_and_description(params[:query])
    else
      @stars = Star.all
    end
  end

  def show
    @star = Star.find(params[:id])
  end

  def new
    @star = Star.new
  end

  def create
    @star = Star.new(star_params)
    @star.user = current_user
    if @star.save
      redirect_to star_path(@star)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def star_params
    params.require(:star).permit(:last_name, :first_name, :description, :price, :photo)
  end

end
