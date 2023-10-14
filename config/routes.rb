Rails.application.routes.draw do
  #Páginas estáticas
  get 'pages/home', to: 'pages#home'
  get 'pages/terms', to: 'pages#terms' 
  get 'pages/privacy'
  root "pages#home"

  # root "articles#index"
end
