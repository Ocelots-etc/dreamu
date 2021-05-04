class CreateDreams < ActiveRecord::Migration[6.1]
  def change
    create_table :dreams do |t|
      t.datetime :dream_datetime
      t.string :journal
      t.string :image_url
      t.integer :category_id

      t.timestamps
    end
  end
end
