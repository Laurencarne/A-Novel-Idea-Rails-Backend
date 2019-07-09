class WishBooksController < ApplicationController
  def index
    wishbook = WishBook.all
    render json: wishbook, except: [:created_at, :updated_at]
  end

  def show
    wishbook = WishBook.find_by(id: params[:id])
    render json: wishbook, except: [:created_at, :updated_at]
  end

  def create
  wishbook = WishBook.create(wishbook_params)
  render json: wishbook
  end

  def update
  wishbook = WishBook.find_by(id: params[:id])
  wishbook.update(wishbook_params)
  render json: wishbook
  end

  def destroy
  wishbook = WishBook.find_by(id: params[:id])
  wishbook.destroy
  render json: {message: "WishBook Successfully Deleted"}
  end

  def wishbook_params
  params.require(:wishbook).permit(:book_id, :wishlist_id)
  end

end
