class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @toilet = Toilet.find(params[:toilet_id])
  end
end
