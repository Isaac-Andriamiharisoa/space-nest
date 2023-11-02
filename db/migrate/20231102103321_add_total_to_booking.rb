class AddTotalToBooking < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :total, :integer
  end
end
