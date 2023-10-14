Rails.application.routes.draw do
  resources :contacts, only: %i[new create]

  #Páginas estáticas
  get 'pages/home', to: 'pages#home'
  get 'pages/terms', to: 'pages#terms' 
  get 'pages/privacy'
  root "pages#home"

  # root "articles#index"
end
