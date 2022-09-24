class EditColToArticles < ActiveRecord::Migration[7.0]
  def change
    change_column :articles, :sexe, :string
  end
end
