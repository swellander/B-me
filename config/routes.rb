Rails.application.routes.draw do

# generates routes for all actions
resources :posts do
  resources :comments
end
root "posts#index"

get "/about", to: "pages#about"
end
