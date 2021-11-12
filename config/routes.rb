Rails.application.routes.draw do
  #resources :appointments
  get 'personas/index'
  get 'home/index'
  #get 'articulos/index'

  #resources :articulos
  resources :personas do 
    resources :appointments
  end
  root 'personas#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
