class WishlistsController < ApplicationController

  def index
    wishlists = Wishlist.all
    render json: wishlists, except: [:created_at, :updated_at],
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
    wishlist = Wishlist.find_by(id: params[:id])
    render json: wishlist, except: [:created_at, :updated_at],
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
  wishlist = Wishlist.create(wishlist_params)
  render json: wishlist
end

def update
  wishlist = Wishlist.find_by(id: params[:id])
  wishlist.update(wishlist_params)
  render json: wishlist
end

def destroy
  wishlist = Wishlist.find_by(id: params[:id])
  wishlist.destroy
  render json: {message: "WishList Successfully Deleted"}
end

def wishlist_params
  params.require(:wishlist).permit(:user_id, :name)
end

end
