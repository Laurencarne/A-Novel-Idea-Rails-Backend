class BooksController < ApplicationController
  def index
    books = Book.all
    render json: books, except: [:created_at, :updated_at]
  end

  def show
      book = Book.find_by(id: params[:id])
      render json: book, except: [:created_at, :updated_at]
  end

  def create
    book = Book.find_or_create_by(google_id: book_params[:google_id])
    book.update(book_params)

    if book_params[:cart_id]
      render json: Cart.find_by(user_id: book_params[:cart_id]).books
    elsif book_params[:wishlist_id]
      render json: Wishlist.find_by(user_id: book_params[:wishlist_id]).books
    end
  end

  def update
    book = Book.find_by(id: params[:id])
    book.update(book_params)
    render json: book
  end

  def destroy
    book = Book.find_by(id: params[:id])
    book.destroy
    render json: {message: "Book Successfully Deleted"}
  end

private
  def book_params
    params.require(:book).permit(:title, :author, :isbn, :price, :image, :publisher, :description, :snippet, :genre, :publishedDate, :pageCount, :google_id, :cart_id, :wishlist_id, :bookorder_id)
  end
end
