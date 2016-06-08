Rails.application.routes.draw do

    root "welcome#index"

    resources :user, only: [:post]
    resources :sessions, only: [:new, :create, :destroy]

    get '/login', to: 'sessions#new'
    post '/user', to: 'users#create'
    delete '/logout', to: 'sessions#destroy'

end
