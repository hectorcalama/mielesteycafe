Rails.application.routes.draw do
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
  
  resources :contactos
  match "/" => "webs#home", via: [:get]
end
