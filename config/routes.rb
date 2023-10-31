Rails.application.routes.draw do
  # Routes pour les ressources existantes (users, gossips, etc.)
  resources :users
  resources :gossips

  # Routes pour club_memberships avec le chemin 'clubs'
  get '/clubs/new', to: 'club_memberships#new_club', as: 'new_club'
  post '/clubs', to: 'club_memberships#create', as: 'create_club_membership'
  get '/clubs', to: 'club_memberships#index', as: 'club_memberships'

  # Route pour la page d'accueil
  root "gossips#index"

  # Routes pour les pages statiques
  get '/about', to: 'static_pages#about'
  get '/top_geeks', to: 'static_pages#top_geeks'

  # Routes pour les fonctionnalités liées aux gossips
  get '/shared_gossips', to: 'gossips#shared_gossips'
  post '/shared_gossips', to: 'gossips#create'

  resources :club_memberships do
    collection do
      get 'new_club'
    end
end
end