class CreateTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :types do |t|
      t.binary :sexe
      t.string :size
      t.string :color
      t.string :brand
      t.float :price
      t.text :description

      t.timestamps
    end
  end
end
