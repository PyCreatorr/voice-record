Rails.application.routes.draw do
  resources :posts do    
    resource :voice_languages, only: [:update], module: :posts
  end
  root "posts#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
