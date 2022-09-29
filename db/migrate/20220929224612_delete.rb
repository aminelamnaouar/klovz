class Delete < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :articles, :reviews
  end
end
