class AddForeignKey < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews,:articles, foreign_key: true
  end
end