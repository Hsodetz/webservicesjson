Rails.application.routes.draw do
  
  devise_for :users
  resources :cars , format: 'html'
  
  # Rutas para el controlador users
  #resources :users #,defaults: {format: "json"}

  # Configuramos el index como vista parcial
  root 'cars#index'

  namespace :api, defaults: {format: 'json'} do
  	resources :cars, only: [:index, :create, :destroy, :update, :show]
  end	
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
