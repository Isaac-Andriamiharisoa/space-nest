class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @planets = Planet.all.limit(5)
  end

  def booked
    @bookings = Booking.where(user_id: current_user.id)
  end

  def created
    @planets = Planet.where(user_id: current_user.id)
  end
end
