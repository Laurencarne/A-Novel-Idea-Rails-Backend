class BookOrdersController < ApplicationController

  def index
    bookorder = BookOrder.all
    render json: bookorder, except: [:created_at, :updated_at]
end

def show
    bookorder = BookOrder.find_by(id: params[:id])
    render json: bookorder, except: [:created_at, :updated_at]
end

def create
  bookorder = BookOrder.create(bookorder_params)
  render json: bookorder
end

def update
  bookorder = BookOrder.find_by(id: params[:id])
  bookorder.update(bookorder_params)
  render json: bookorder
end

def destroy
  bookorder = BookOrder.find_by(id: params[:id])
  bookorder.destroy
  render json: {message: "BookOrder Successfully Deleted"}
end

def bookorder_params
  params.require(:bookorder).permit(:order_id, :book_id)
end


end
