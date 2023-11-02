class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @planet = Planet.all.limit(1)
  end

  def booked
  @bookings = Booking.where(user_id: current_user.id)
  end

end
