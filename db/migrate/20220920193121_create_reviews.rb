class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.float :rate_as_client
      t.float :rate_as_offer
      t.text :about
      t.references :booking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
