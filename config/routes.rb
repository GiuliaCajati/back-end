Rails.application.routes.draw do
  resources :gifts
  resources :characters, only: [:index, :show]
  resources :relationships, only: [:create, :update]
  resources :users, only: [:show, :create, :destroy]
  
  post "/users", to: "users#create", as: "sign_up"
  post "/login", to: "users#login", as: "login"
  get "/logout", to: "users#logout", as: "logout"
  patch "/interests/:id", to: "interests#dialogue"
  patch "/users/:id/buy", to: "users#buy"
  patch "/users/:id/give", to: "users#give"
  #get "/signup" => "users#new"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
