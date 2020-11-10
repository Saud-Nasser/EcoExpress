Rails.application.routes.draw do
  resources :clients
  resources :sessions, only: [:new, :create, :destroy]

  root to: 'static_pages#home'
  get 'static_pages/home'
  get '/signup',    to: 'clients#new'
  get '/signin',    to: 'sessions#new'
  match '/signout',    to: 'sessions#destroy', via: :delete
  #match '/signup',  to: 'clients#new', via: [:get, :post]
  post '/signup',  to: 'clients#create'

  # get 'static_pages/help'
   #get 'static_pages/about'
   #get 'static_pages/contact'
  get '/help',    to: 'static_pages#help'
  get '/about',   to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  
  
  
end