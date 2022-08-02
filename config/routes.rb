Rails.application.routes.draw do
  get 'buscars/create'
  get 'usuarios/new'
  get 'usuarios/show'
  get 'usuarios/edit'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/update'
  get 'sessions/destroy'
  get 'webs/home'
  get 'webs/somos'
  get 'webs/mieles'
  get 'webs/cafes'
  get 'webs/tes'
  get 'webs/snacks'
  get 'webs/accesorios'
  get 'webs/ropa'
  get 'webs/descubre'
  get 'webs/privado'
  
  #get 'registros/new'
  #post 'registros/create'
  #post 'registros/create'


 # Proceso de ingreso de registro
 get "registros", to: "registros#new"
 post "usuarios", to: "registros#create"
 post "registros", to: "registros#create"

  resources :sessions, only: [:new, :create, :destroy]
  resources :usuarios, only: [:show]
  resources :registros, only: [:new, :create]

  resources :contactos
  match "/" => "webs#home", via: [:get]

end
