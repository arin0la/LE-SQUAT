class AddToiletIdToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :toilet_id, :integer
  end
end
