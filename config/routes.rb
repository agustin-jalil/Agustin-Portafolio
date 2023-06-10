Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "weather", to: "pages#weather"
  get "movie", to: "pages#movie"
  get "budget", to: "pages#budget"
  get "cryptocurrency", to: "pages#cryptocurrency"
  get "music", to: "pages#music"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
