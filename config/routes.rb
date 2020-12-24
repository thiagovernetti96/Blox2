Rails.application.routes.draw do
  get 'salas/controller'
  devise_for :users
  root to: 'pages#home'
  
  resources :users, only: %i[show edit update] do
  resources :salas, only: %i[index show new create update] do
  resources :agendas, only: %i[create]
  end

end
end
