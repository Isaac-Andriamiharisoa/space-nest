class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user_id: current_user.id)
    @prices = []
    @bookings.each do |booking|
      price = (booking.end_date - booking.start_date).to_i * booking.planet.price
      @prices << price
    end
  end

  def new
    @booking = Booking.new
    @planet = Planet.find(params[:planet_id])
  end

  def create
    @booking = Booking.create(booking_params)
    @booking.user = current_user
    @planet = Planet.find(params[:planet_id])
    @booking.planet = @planet
    if @booking.save
      redirect_to bookings_path, notice: "The planet has been booked"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find[params[:id]]
    @booking.destroy

    redirect_to planet_path(planet)
  end

  private

  def booking_params
    params.require(:booking).permit(:planet_id, :user_id, :start_date, :end_date)
  end
end
