Rails.application.routes.draw do
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
  
  resources :sessions, only: [:new, :create, :destroy]
  resources :usuarios, only: [:show]

  resources :contactos
  match "/" => "webs#home", via: [:get]
end
