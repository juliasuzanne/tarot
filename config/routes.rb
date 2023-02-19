Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/cards" => "cards#index"

  get "/cards/:id" => "cards#show"

  patch "/cards/:id" => "cards#update"
end
