Rails.application.routes.draw do

  root "welcome#index"
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :cases do
    resources :entries
  end

  get '/login', to: 'sessions#new'
  delete '/logout', to: 'sessions#destroy'
  delete '/entries/:id', to: 'entries#destroy', as: 'entry'

  get '/about', to: 'pages#about', as: 'about'

end


