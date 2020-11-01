Rails.application.routes.draw do
  resources :clients
  root to: 'static_pages#home'
  get 'static_pages/home'
  
  get '/signup',  to: 'clients#new'
  # get 'static_pages/help'
   #get 'static_pages/about'
   #get 'static_pages/contact'
  get '/help',    to: 'static_pages#help'
  get '/about',   to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  
  
  
end