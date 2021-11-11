Rails.application.routes.draw do
  get 'personas/index'
  get 'home/index'
  get 'articulos/index'

  resources :articulos
  resources :personas
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
