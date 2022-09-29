class RemoveOreignKeyForBook < ActiveRecord::Migration[7.0]
  def change
    remove_index "users", column: [:bookings_id], name: "index_users_on_bookings_id"
  end
end
