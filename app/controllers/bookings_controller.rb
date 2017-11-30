class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @baby = Baby.find(params[:baby_id])
  end

  def create
    @baby    = Baby.find(params[:baby_id])
    @booking = Booking.new(booking_params)
    @booking.baby = @baby
    if @booking.save
      redirect_to baby_path(@baby)
    else
      render 'baby/show'
    end
end

 private

  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date, :price_per_day, :status)
  end
end
