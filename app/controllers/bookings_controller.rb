class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    # @user = current_user
    @planet = Planet.find(params[:planet_id])
  end

  def create
    @booking = Booking.create(booking_params)
    @booking.user = current_user
    @planet = Planet.find(params[:planet_id])
    @booking.planet = @planet
    if @booking.save
      redirect_to planet_path(@planet)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:planet_id, :user_id, :start_date, :end_date)
  end
end
