class RemoveColumn < ActiveRecord::Migration[7.0]
  def change
    remove_index "reviews", column: [:articles_id], name: "index_reviews_on_articles_id"
  end
end
