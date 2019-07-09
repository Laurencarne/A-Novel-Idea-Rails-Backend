class Order < ApplicationRecord
  belongs_to :user
  has_many :book_orders
  has_many :books, through: :book_orders

  def book_ids=(book_ids)
    book_ids.map do |book|
      self.book_orders.build(book_id: book).save
    end
  end

  def bookorder_id
  end
end
