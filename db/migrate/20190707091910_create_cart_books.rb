class CreateCartBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_books do |t|
      t.references :cart, foreign_key: true
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
