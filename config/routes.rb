Rails.application.routes.draw do

   root "welcome#index"
     resources :users
     resources :sessions, only: [:new, :create, :destroy]
     resources :cases do
     resources :entries, only: [:new, :create, :show, :edit, :delete]
     end

   get '/login', to: 'sessions#new'
   delete '/logout', to: 'sessions#destroy'

end
