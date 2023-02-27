class BookingsController < ApplicationController
  def new
    @bookings = Bookings.new
  end
end
