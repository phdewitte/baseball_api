Rails.application.routes.draw do
  resources :teams do
    resources :players
  end

  get '/teams/populate', to: 'teams#populate'
  get '/players/populate', to: 'players#populate'

  resources :statistics

  root 'teams#index'
end