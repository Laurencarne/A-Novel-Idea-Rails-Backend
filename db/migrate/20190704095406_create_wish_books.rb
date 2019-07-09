class CreateWishBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :wish_books do |t|
      t.references :book, foreign_key: true
      t.references :wishlist, foreign_key: true

      t.timestamps
    end
  end
end
