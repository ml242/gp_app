# == Route Map (Updated 2013-12-13 16:14)
#
#         new_user_session GET    /users/sign_in(.:format)        devise/sessions#new
#             user_session POST   /users/sign_in(.:format)        devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)       devise/sessions#destroy
#            user_password POST   /users/password(.:format)       devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)   devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)  devise/passwords#edit
#                          PUT    /users/password(.:format)       devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)         devise/registrations#cancel
#        user_registration POST   /users(.:format)                devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)        devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)           devise/registrations#edit
#                          PUT    /users(.:format)                devise/registrations#update
#                          DELETE /users(.:format)                devise/registrations#destroy
#                     root        /                               welcome#index
#                     root        /                               users#sign_in
#            welcome_index GET    /welcome/index(.:format)        welcome#index
#         itineraries_copy POST   /itineraries/copy(.:format)     itineraries#copy
#                    users GET    /users(.:format)                users#index
#                          POST   /users(.:format)                users#create
#                 new_user GET    /users/new(.:format)            users#new
#                edit_user GET    /users/:id/edit(.:format)       users#edit
#                     user GET    /users/:id(.:format)            users#show
#                          PUT    /users/:id(.:format)            users#update
#                          DELETE /users/:id(.:format)            users#destroy
#                    items GET    /items(.:format)                items#index
#                          POST   /items(.:format)                items#create
#                 new_item GET    /items/new(.:format)            items#new
#                edit_item GET    /items/:id/edit(.:format)       items#edit
#                     item GET    /items/:id(.:format)            items#show
#                          PUT    /items/:id(.:format)            items#update
#                          DELETE /items/:id(.:format)            items#destroy
#              itineraries GET    /itineraries(.:format)          itineraries#index
#                          POST   /itineraries(.:format)          itineraries#create
#            new_itinerary GET    /itineraries/new(.:format)      itineraries#new
#           edit_itinerary GET    /itineraries/:id/edit(.:format) itineraries#edit
#                itinerary GET    /itineraries/:id(.:format)      itineraries#show
#                          PUT    /itineraries/:id(.:format)      itineraries#update
#                          DELETE /itineraries/:id(.:format)      itineraries#destroy
#

GoinPlacesTestApp::Application.routes.draw do
  devise_for :users

  # , :controllers => {:sessions => :sessions,
  # :registrations => :registrations, :confirmations => :confirmations}

  root to: 'welcome#index'
  root to: 'users#sign_in'

  get 'welcome/index'
  get 'itineraries/:id/copy/' => 'itineraries#copy'

  resources :users
  resources :items
  resources :itineraries


end
