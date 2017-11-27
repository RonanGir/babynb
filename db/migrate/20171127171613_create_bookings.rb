class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :baby, foreign_key: true
      t.string :status
      t.date :starting_date
      t.date :ending_date
      t.integer :price_per_day

      t.timestamps
    end
  end
end
