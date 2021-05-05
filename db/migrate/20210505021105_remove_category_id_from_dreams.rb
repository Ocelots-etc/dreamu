class RemoveCategoryIdFromDreams < ActiveRecord::Migration[6.1]
  def change
    remove_column :dreams, :category_id, :integer
  end
end
