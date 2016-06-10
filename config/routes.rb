Rails.application.routes.draw do

    root "welcome#index"

    resources :users
    resources :sessions, only: [:new, :create, :destroy]
    resources :cases, only: [:new, :create, :show] do

      resources :entries, only: [:new, :create]
    end




    get '/login', to: 'sessions#new'
    delete '/logout', to: 'sessions#destroy'

end
