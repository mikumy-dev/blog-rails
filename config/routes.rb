Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "articles#index"
  # get "/", to: "top#index"
  resources :articles
  get "/articles/:id/delete", to: "articles#destroy"
end
