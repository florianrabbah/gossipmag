Rails.application.routes.draw do
 
  
  # Routes pour les ressources existantes (users, gossips, etc.)
  resources :users
  resources :gossips
  resources :articles

  # Routes pour club_memberships avec le chemin 'clubs'
  get '/clubs/new', to: 'club_memberships#new_club', as: 'new_club'
  get '/clubs', to: 'club_memberships#index', as: 'club_memberships'
  get '/about', to: 'static_pages#about'
  get '/top_geeks', to: 'static_pages#top_geeks'
  get 'les_meilleures_villes_de_geeks/index'
  get '/shared_gossips', to: 'gossips#shared_gossips'
  get '/shared_gossips', to: 'gossips#shared_gossips'
  # Route pour la page d'accueil
  root "gossips#index"


  

  
  
  post '/shared_gossips', to: 'gossips#create'
  post '/clubs', to: 'club_memberships#create', as: 'create_club_membership'

  resources :club_memberships do
    collection do
      get 'new_club'

      get '/index_club_memberships', to: 'club_memberships#index', as: 'index_club_memberships'

    end
  end
  















end
