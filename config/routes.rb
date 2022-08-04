Rails.application.routes.draw do
  get 'messages/index'
  default_url_options host: 'localhost:3000'

  resources :rooms do
    resources :messages
  end
  root 'pages#home'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  get 'user/:id', to: 'users#show', as: 'user'
end
