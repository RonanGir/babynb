module BookingsHelper
  def days_count_for(booking)
    (booking.ending_date - booking.starting_date).to_i
  end

  def total_price_for(booking)
    ((booking.ending_date - booking.starting_date)*booking.baby.price).to_i
  end
end
