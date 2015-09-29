Rails.application.routes.draw do
  
  devise_for :users
  # The root goes to the angular config
  root to: 'application#angular'

    resources :categories, only: [:index, :show]
    resources :food_groups, only: [:index, :show]
    resources :wines, only: [:create, :show] 
    # resources :varietals, only: [:index, :show]
    get '/wines', :to => 'wines#index'
    get '/varietals/:winename', :to => 'varietals#index'
    get '/winesearches/:varietal', :to => 'wine_searches#index'

end

#         new_user_session GET    /users/sign_in(.:format)          devise/sessions#new
#             user_session POST   /users/sign_in(.:format)          devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)         devise/sessions#destroy
#            user_password POST   /users/password(.:format)         devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)     devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)    devise/passwords#edit
#                          PATCH  /users/password(.:format)         devise/passwords#update
#                          PUT    /users/password(.:format)         devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)           devise/registrations#cancel
#        user_registration POST   /users(.:format)                  devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)          devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)             devise/registrations#edit
#                          PATCH  /users(.:format)                  devise/registrations#update
#                          PUT    /users(.:format)                  devise/registrations#update
#                          DELETE /users(.:format)                  devise/registrations#destroy
#                     root GET    /                                 application#angular
#               categories GET    /categories(.:format)             categories#index
#                 category GET    /categories/:id(.:format)         categories#show
#              food_groups GET    /food_groups(.:format)            food_groups#index
#               food_group GET    /food_groups/:id(.:format)        food_groups#show
#                    wines GET    /wines(.:format)                  wines#index
#                          POST   /wines(.:format)                  wines#create
#                 new_wine GET    /wines/new(.:format)              wines#new
#                edit_wine GET    /wines/:id/edit(.:format)         wines#edit
#                     wine GET    /wines/:id(.:format)              wines#show
#                          PATCH  /wines/:id(.:format)              wines#update
#                          PUT    /wines/:id(.:format)              wines#update
#                          DELETE /wines/:id(.:format)              wines#destroy
#                          GET    /varietals/:winename(.:format)    varietals#index
#                          GET    /winesearches/:varietal(.:format) wine_searches#index