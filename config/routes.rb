Rails.application.routes.draw do
  resources :cart_books
  resources :carts
  resources :all_books
  resources :wish_books
  resources :wishlists
  resources :books
  resources :book_orders
  resources :orders
  resources :users
end
