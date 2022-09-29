class Add < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.float :rate_as_offer
      t.text :about
      t.timestamps
    end
  end
end
