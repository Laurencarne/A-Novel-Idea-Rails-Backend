class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :google_id
      t.string :title
      t.string :subtitle
      t.string :author
      t.integer :isbn, limit: 8
      t.integer :price
      t.string :image
      t.string :publisher
      t.string :description
      t.string :snippet
      t.string :genre
      t.string :publishedDate
      t.integer :pageCount
      t.string :printType
      t.string :language

      t.timestamps
    end
  end
end
