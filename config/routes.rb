Rails.application.routes.draw do
  devise_for :users
  get 'home/homepage'
  resources :links

  post 'like', to: 'home#like', via: :post
  post 'unlike', to: 'home#unlike', via: :post
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
