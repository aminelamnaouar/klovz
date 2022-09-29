class RemoveForeignKeyReviewsArticle < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :reviews, :articles
    add_reference :reviews, :article, foreign_key: true
  end
end
