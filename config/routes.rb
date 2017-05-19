Rails.application.routes.draw do
  root 'welcome#index'

  get 'me',to: 'player_corner#index'

  devise_for :players,controllers: {
    registrations: 'players/registrations'
  }
  namespace :api do
    post 'auth',to: 'authenticate#index'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
