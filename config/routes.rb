Rails.application.routes.draw do

  root to: "products#index"

  get '/sign_up' => 'users#new'
  post '/users' => 'users#create'

  get '/sign_in' => 'sessions#new'
  post '/sign_in' => 'sessions#create'
  get 'sign_out' => 'sessions#destroy'

  get 'thanks', to: 'charges#thanks', as: 'thanks'

  resources :products
  resources :order_items
  resources :charges
  resource :cart, only: [:show]

  get 'finalize' => 'carts#finalize'

end
