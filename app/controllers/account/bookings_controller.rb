class Account::BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to account_bookings_path
  end
end
