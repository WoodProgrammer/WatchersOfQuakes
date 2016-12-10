Rails.application.routes.draw do
  get 'interactive/page'

  resources :searches
  get 'search', to: "searches#index"
  get 'shows', to: "searches#show"
  post 'shows', to: "searches#show"

  get 'searches/search'
  root 'quakes#index'
  get 'quakes/:id', to: "quakes#show"
  get 'quakes', to: "quakes#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
