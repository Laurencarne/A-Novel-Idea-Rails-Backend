class Book < ApplicationRecord
  has_many :wish_books
  has_many :book_orders
  has_many :cart_books
  has_many :users, through: :cart
  has_many :users, through: :wishlist
  has_many :users, through: :orders

  def cart_id=(id)
    self.cart_books.build(cart_id: id).save
  end

  def wishlist_id=(id)
    self.wish_books.build(wishlist_id: id).save
  end

  def cart_id
  end

  def wishlist_id
  end


end
