Rails.application.routes.draw do
  resources :tableros
  get 'usuarios/:id/publicacions', to: "usuarios#mostrar"
  devise_for :usuarios
  resources :etiqueta
  resources :publicacions
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "publicacions#index"
end
