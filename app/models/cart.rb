class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_books
  has_many :books, through: :cart_books
end
