Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: 'projects#index'
  resources :projects, only: %i[index show]
  get '/terms', to: 'customs#terms'
  get '/contact', to: 'customs#contact'
  get '/about', to: 'customs#about'

  get '/note-me-api', to: 'projects#get_api'
end
