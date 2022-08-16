Rails.application.routes.draw do
  get 'buscars/create'
  get 'usuarios/new'
  get 'usuarios/show'
  get 'usuarios/edit'
  get 'admins/new'
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
  
#  get 'registros/new'
#  get 'usuarios/new'
#  post 'registros/create'
#  post 'usuarios/create'


#  Proceso de ingreso de registro
  get '/registros/new', to: 'registros#new'
  get '/usuarios', to: 'usuarios#new'
  post '/registros', to: 'registros#create'
  #post '/usuarios/new', to: 'registros#create'

  get '/producto/:id/edit', to: 'productos#edit', as: 'editar_producto'
  get '/producto/:id', to: 'productos#show', as: 'producto'
  patch '/producto/:id', to: 'productos#update'
  put '/producto/:id', to: 'productos#update'

  resources :sessions #, only: [:new, :create, :destroy]
  resources :usuarios #, only: [:show]
  resources :registros #, only: [:new, :create]
  resources :productos
  resources :admins

  resources :contactos
  match "/" => "webs#home", via: [:get]

end
