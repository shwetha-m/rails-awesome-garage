Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :cars, only: %i[index show] do
    resources :reviews, only: %i[create]
    resources :favourites, only: [:create]
  end
  resources :favourites, only: %i[index destroy]

  get '/', to: 'pages#index'

  # get '/cars', to: 'cars#index'
  # get '/cars/:id', to: 'cars#show'
  # get '/cars/:id', to: 'cars#show'
end
