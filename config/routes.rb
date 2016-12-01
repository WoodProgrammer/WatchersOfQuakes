Rails.application.routes.draw do
  resources :quakes
  root 'quakes#index'
  get 'quakes/:id', to: "quakes#show"
  get 'quakes', to: "quakes#index"
  get '/hebele', to: "quakes#hebele"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
