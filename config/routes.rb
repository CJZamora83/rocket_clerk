Rails.application.routes.draw do

    root "welcome#index"

    resources :users
    resources :sessions, only: [:new, :create, :destroy]
    resources :cases, only: [:new, :create]


    get '/login', to: 'sessions#new'
    post '/user', to: 'users#create'
    delete '/logout', to: 'sessions#destroy'


end
