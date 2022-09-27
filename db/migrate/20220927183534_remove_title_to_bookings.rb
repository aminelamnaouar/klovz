class RemoveTitleToBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :title, :string
  end
end
