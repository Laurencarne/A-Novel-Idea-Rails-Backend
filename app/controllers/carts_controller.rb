class CartsController < ApplicationController
  def index
    cart = Cart.all
    render json: cart, except: [:created_at, :updated_at],
    include: [
      {
        :user => {
          except: [:created_at, :updated_at]
        },
        :books => {
          except: [:created_at, :updated_at]
        }
      }
    ]
  end

  def show
      carts = Cart.find_by(id: params[:id])
      render json: carts, except: [:created_at, :updated_at],
      include: [
        {
          :user => {
            except: [:created_at, :updated_at]
          },
          :books => {
            except: [:created_at, :updated_at]
          }
        }
      ]
  end

  def create
    cart = Cart.create(cart_params)
    render json: cart
  end

  def update
    cart = Cart.find_by(id: params[:id])
    cart.update(cart_params)
    render json: cart
  end

  def destroy
    cart = Cart.find_by(id: params[:id])
    cart.destroy
    render json: {message: "Cart Successfully Deleted"}
  end

  def cart_params
    params.require(:cart).permit(:user_id)
  end

end
