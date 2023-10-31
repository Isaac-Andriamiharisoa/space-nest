class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @planet = Planet.find(params[:planet_id])
  end

  def create
    @booking = Booking.create(booking_params)
    @planet = Planet.find(@booking[:planet_id])
    if @booking.save
      redirect_to planet_path(@planet)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:planet_id, :start_date, :end_date)
  end
end
