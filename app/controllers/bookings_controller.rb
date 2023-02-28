class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @toilet = Toilet.find(params[:toilet_id])
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to toilets_path, status: :see_other
    # redirect_to toilets_path(@booking.toilet), status: :see_other
  end
end
