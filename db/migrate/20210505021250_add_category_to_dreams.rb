class AddCategoryToDreams < ActiveRecord::Migration[6.1]
  def change
    add_reference :dreams, :category, foreign_key: true
  end
end
