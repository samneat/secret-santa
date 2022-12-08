Rails.application.routes.draw do
  get 'wishlists/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'pages#home'
  resources :participants do
    resources :wishlists, only: %i[new create]
  end
  resources :wishlists, only: %i[destroy]
end
