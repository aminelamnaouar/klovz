class ChangerelationStructure < ActiveRecord::Migration[7.0]
  def change
      remove_foreign_key :articles, :reviews
  end

  def creat
    add_reference :reviews, :articles,  foreign_key: true
  end
end
