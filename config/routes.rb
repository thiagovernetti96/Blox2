Rails.application.routes.draw do
  get 'salas/controller'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: %i[show edit update] do
  resources :salas, only: %i[index show new create update] do
  resources :agendas, only: %i[create]
  end
end
