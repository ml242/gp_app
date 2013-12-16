GoinPlacesTestApp::Application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # , :controllers => {:sessions => :sessions,
  # :registrations => :registrations, :confirmations => :confirmations}

  match 'auth/:provide/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'


  root to: 'welcome#index'
  root to: 'users#sign_in'

  get 'welcome/index'
  get 'itineraries/:id/copy/' => 'itineraries#copy'
  get 'itineraries/:id/add/' => 'itineraries#add'


  resources :users
  resources :itineraries do
    resources :items
  end
  resources :items
  resources :links

end
