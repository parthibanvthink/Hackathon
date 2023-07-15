Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    namespace :v1 do
      post '/login', to: 'users#login'
      get '/logout', to: 'users#logout'

      get '/masterdata', to: 'master_types#masterData'

      get '/chathistory/:rollnumber', to: 'help_desks#chathistory'

      get '/food_managements', to: 'help_desks#food_managements'
      post '/food_managements', to: 'help_desks#create_food_managements'
    end
  end
  resources :posts
end
