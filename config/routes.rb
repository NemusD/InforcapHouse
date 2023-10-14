Rails.application.routes.draw do
  devise_for :users
  #contactos
  resources :contacts, only: %i[new create]

  #Páginas estáticas
  get 'pages/home', to: 'pages#home'
  get 'pages/terms', to: 'pages#terms' 
  root "pages#home"

  # root "articles#index"
end
