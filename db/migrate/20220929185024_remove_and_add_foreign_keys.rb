class RemoveAndAddForeignKeys < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :reviews, :bookings
  end
end
