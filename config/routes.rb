# == Route Map (Updated 2013-12-17 18:03)
#
#         new_user_session GET      /users/sign_in(.:format)                            devise/sessions#new
#             user_session POST     /users/sign_in(.:format)                            devise/sessions#create
#     destroy_user_session DELETE   /users/sign_out(.:format)                           devise/sessions#destroy
#            user_password POST     /users/password(.:format)                           devise/passwords#create
#        new_user_password GET      /users/password/new(.:format)                       devise/passwords#new
#       edit_user_password GET      /users/password/edit(.:format)                      devise/passwords#edit
#                          PUT      /users/password(.:format)                           devise/passwords#update
# cancel_user_registration GET      /users/cancel(.:format)                             devise/registrations#cancel
#        user_registration POST     /users(.:format)                                    devise/registrations#create
#    new_user_registration GET      /users/sign_up(.:format)                            devise/registrations#new
#   edit_user_registration GET      /users/edit(.:format)                               devise/registrations#edit
#                          PUT      /users(.:format)                                    devise/registrations#update
#                          DELETE   /users(.:format)                                    devise/registrations#destroy
#  user_omniauth_authorize GET|POST /users/auth/:provider(.:format)                     users/omniauth_callbacks#passthru {:provider=>/facebook/}
#   user_omniauth_callback GET|POST /users/auth/:action/callback(.:format)              users/omniauth_callbacks#(?-mix:facebook)
#                                   /auth/:provide/callback(.:format)                   sessions#create
#             auth_failure          /auth/failure(.:format)                             :controller#:action
#                  signout          /signout(.:format)                                  sessions#destroy
#                     root          /                                                   welcome#index
#                     root          /                                                   users#sign_in
#    new_user_registration          /                                                   welcome#register
#            welcome_index GET      /welcome/index(.:format)                            welcome#index
#         welcome_register GET      /welcome/register(.:format)                         welcome#register
#                          GET      /itineraries/:id/copy(.:format)                     itineraries#copy
#                          GET      /itineraries/:id/add(.:format)                      itineraries#add
#                    users GET      /users(.:format)                                    users#index
#                          POST     /users(.:format)                                    users#create
#                 new_user GET      /users/new(.:format)                                users#new
#                edit_user GET      /users/:id/edit(.:format)                           users#edit
#                     user GET      /users/:id(.:format)                                users#show
#                          PUT      /users/:id(.:format)                                users#update
#                          DELETE   /users/:id(.:format)                                users#destroy
#          itinerary_items GET      /itineraries/:itinerary_id/items(.:format)          items#index
#                          POST     /itineraries/:itinerary_id/items(.:format)          items#create
#       new_itinerary_item GET      /itineraries/:itinerary_id/items/new(.:format)      items#new
#      edit_itinerary_item GET      /itineraries/:itinerary_id/items/:id/edit(.:format) items#edit
#           itinerary_item GET      /itineraries/:itinerary_id/items/:id(.:format)      items#show
#                          PUT      /itineraries/:itinerary_id/items/:id(.:format)      items#update
#                          DELETE   /itineraries/:itinerary_id/items/:id(.:format)      items#destroy
#              itineraries GET      /itineraries(.:format)                              itineraries#index
#                          POST     /itineraries(.:format)                              itineraries#create
#            new_itinerary GET      /itineraries/new(.:format)                          itineraries#new
#           edit_itinerary GET      /itineraries/:id/edit(.:format)                     itineraries#edit
#                itinerary GET      /itineraries/:id(.:format)                          itineraries#show
#                          PUT      /itineraries/:id(.:format)                          itineraries#update
#                          DELETE   /itineraries/:id(.:format)                          itineraries#destroy
#                    items GET      /items(.:format)                                    items#index
#                          POST     /items(.:format)                                    items#create
#                 new_item GET      /items/new(.:format)                                items#new
#                edit_item GET      /items/:id/edit(.:format)                           items#edit
#                     item GET      /items/:id(.:format)                                items#show
#                          PUT      /items/:id(.:format)                                items#update
#                          DELETE   /items/:id(.:format)                                items#destroy
#                    links GET      /links(.:format)                                    links#index
#                          POST     /links(.:format)                                    links#create
#                 new_link GET      /links/new(.:format)                                links#new
#                edit_link GET      /links/:id/edit(.:format)                           links#edit
#                     link GET      /links/:id(.:format)                                links#show
#                          PUT      /links/:id(.:format)                                links#update
#                          DELETE   /links/:id(.:format)                                links#destroy
#

GoinPlacesTestApp::Application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # , :controllers => {:sessions => :sessions,
  # :registrations => :registrations, :confirmations => :confirmations}

  match 'auth/:provide/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'


  root to: 'welcome#index'
  # root to: 'users#sign_in'
  get "welcome/register", :as => "welcome_register"
  # root to: 'users#create'

  # get 'welcome#register', as 'users#register'

  # get 'welcome/index' =>
  # get 'welcome/register'
  get 'itineraries/:id/copy/' => 'itineraries#copy'
  get 'itineraries/:id/add/' => 'itineraries#add'


  resources :users
  resources :itineraries do
    resources :items
  end

  resources :items
  resources :links

end
