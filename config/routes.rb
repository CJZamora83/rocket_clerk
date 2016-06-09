Rails.application.routes.draw do

    root "welcome#index"

    resources :users
    resources :sessions, only: [:new, :create, :destroy]
    resources :cases, only: [:new, :create]


    get '/login', to: 'sessions#new'
    delete '/logout', to: 'sessions#destroy'


end
