class CartBooksController < ApplicationController
  def index
    cartbook = CartBook.all
    render json: cartbook, except: [:created_at, :updated_at]
  end

  def show
      cartbooks = CartBook.find_by(id: params[:id])
      render json: cartbooks, except: [:created_at, :updated_at]
  end

  def create
    cartbook = CartBook.create(cartbook_params)
    render json: cartbook
  end

  def update
    cartbook = CartBook.find_by(id: params[:id])
    cartbook.update(cartbook_params)
    render json: cartbook
  end

  def destroy
    cartbook = CartBook.find_by(id: params[:id])
    user_id = cartbook.cart_id
    cartbook.destroy
    render json: cartbook
    # render json: Cart.find_by(user_id: book_params[:cart_id]).books
  end

  def cartbook_params
    params.require(:cartbook).permit(:cart_id, :book_id)
  end
end
