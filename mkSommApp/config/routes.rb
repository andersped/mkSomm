Rails.application.routes.draw do
  
  devise_for :users
  # The root goes to the angular config
  root to: 'application#angular'

    resources :categories, only: [:index, :show]
    resources :food_groups, only: [:index, :show]
    # resources :varietals, only: [:index, :show]
    get '/varietals/:winename', :to => 'varietals#index'
    get '/winesearches/:varietal', :to => 'wine_searches#index'

end

# root GET  /                          application#angular
#  categories GET  /categories(.:format)      categories#index
#    category GET  /categories/:id(.:format)  categories#show
# food_groups GET  /food_groups(.:format)     food_groups#index
#  food_group GET  /food_groups/:id(.:format) food_groups#show