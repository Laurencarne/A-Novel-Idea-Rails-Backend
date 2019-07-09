class Wishlist < ApplicationRecord
  belongs_to :user
  has_many :wish_books
  has_many :books, through: :wish_books
end
