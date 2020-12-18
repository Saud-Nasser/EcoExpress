Rails.application.routes.draw do
  resources :clients do
    resources :orders 
  end
  
  get '/orders/:client_id', to: 'orders#show'
  resources :orders
  resources :sessions, only: [:new, :create, :destroy]

  root to: 'static_pages#home'
  get '/home', to: 'static_pages#home'
  get '/signup',    to: 'clients#new'
  get '/signin',    to: 'sessions#new', as: 'signin'
  get '/signout',    to: 'sessions#destroy', via: :delete, as: 'signout'
  #match '/signup',  to: 'clients#new', via: [:get, :post]
  post '/signup',  to: 'clients#create'
  get '/show',    to: 'clients#show'
  
  get '/clients/:id/set', to: 'clients#edit'
  
  get '/districts',    to: 'static_pages#districts'
  get '/delivery_time',    to: 'static_pages#delivery_time'
  get '/help',    to: 'static_pages#help'
  get '/about',   to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  #get 'client_path', to: 'clients#show'
  #get 'edit_client_path', to: 'clients#edit'
  
  
end