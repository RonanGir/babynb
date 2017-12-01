class BookingsController < ApplicationController
  def new
    @baby = Baby.find(params[:baby_id])
    @booking = Booking.new
  end

  def create
    @baby    = Baby.find(params[:baby_id])
    @booking = Booking.new(booking_params)
    @booking.baby = @baby
    @booking.user = current_user
    @booking.status = "pending"

    if @booking.save
      redirect_to account_bookings_path(@booking.baby)
    else
      render 'bookings/new'
    end
  end

 private

  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date)
  end
end
