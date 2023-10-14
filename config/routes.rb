Rails.application.routes.draw do
  #Devise
  devise_for :users, controllers: { registrations: 'registrations' },
                      path: '',
                      path_names: { sign_in: 'login',
                                    sign_out: 'logout',
                                    sign_up: 'register' }

  #contactos 
  resources :contacts, only: %i[new create]

  #Páginas estáticas
  get 'pages/home', to: 'pages#home'
  get 'pages/terms', to: 'pages#terms' 
  root "pages#home"

  # root "articles#index"
end
