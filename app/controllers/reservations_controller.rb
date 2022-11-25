class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
    @price = (@reservation.date_end - @reservation.date_start).to_i * @reservation.star.price.to_i
  end

    # recupérer la date_start et date_end
    # calculer le nombre de jours correspondants
    # faire nb de jour * price

  def new
    @star = Star.find(params[:star_id])
    @reservation = Reservation.new(star: @star)
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @star = Star.find(params[:star_id])
    @reservation.star = @star
    @reservation.save
    if @reservation.save
      redirect_to reservation_path(@reservation)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to reservations_path, status: :see_other
  end
end

private

def reservation_params
  params.require(:reservation).permit(:date_start, :date_end)
end
