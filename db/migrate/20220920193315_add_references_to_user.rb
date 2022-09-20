class AddReferencesToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :bookings, foreign_key: true

  end
end
