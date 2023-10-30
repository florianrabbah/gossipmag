Rails.application.routes.draw do
  get 'static_pages/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users
 
  

  # Defines the root path route ("/")
  # root "articles#index"
  root "gossips#index"
  get '/about', to: 'static_pages#about'
  get '/top_geeks', to: 'static_pages#top_geeks'


  resources :gossips, only: [:index, :show, :new, :create]
  get '/shared_gossips', to: 'gossips#shared_gossips'
  #get '/contact', to: 'static_pages#contact'
end


