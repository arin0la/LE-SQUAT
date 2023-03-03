class BookingsController < ApplicationController
  before_action :set_toilet, only: %i[new create]


  def index
    @bookings = Booking.where(user_id: current_user.id)
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(bookings_params)
    @booking.toilet = @toilet
    @booking.user = current_user
    @booking.save
    redirect_to toilets_path(@toilet)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to toilets_path, status: :see_other
    # redirect_to toilets_path(@booking.toilet), status: :see_other
  end

  private

  def set_toilet
    @toilet = Toilet.find(params[:toilet_id])
  end

  def bookings_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
