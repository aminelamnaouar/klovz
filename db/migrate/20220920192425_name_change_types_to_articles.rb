class NameChangeTypesToArticles < ActiveRecord::Migration[7.0]
  def change
    rename_table :types, :articles
    add_column :articles, :types, :string
  end
end
