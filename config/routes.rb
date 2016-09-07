Rails.application.routes.draw do
  resources :teams do
    resources :players
  end

  resources :statistics

  root 'teams#index'
end
