class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @toilet = Toilet.find(params[:toilet_id])
  end

  def destroy
    @booking = Booking.find(params[:toilet_id])
    @review.destroy
    redirect_to toilets_path(@review.toilet), status: :see_other
  end
end
