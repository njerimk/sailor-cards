Rails.application.routes.draw do
  
  get 'games', to: 'games#index'
  get '/games/:id', to: 'games#show', as: 'game'
  get 'games/new'
  get 'games/edit'
  get 'characters', to: 'characters#index'
  get '/characters/:id', to: 'characters#show', as: 'character'
  get 'characters/new'
  get 'characters/edit'
  get 'users', to: 'users#index'
  get '/users/:id', to: 'users#show', as: 'user'
  get 'users/new'
  get 'users/edit'
  get 'cards', to: 'cards#index'
  get 'cards/:id', to: 'cards#show', as: 'card'
  resources :cards

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
