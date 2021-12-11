Rails.application.routes.draw do
  get 'home/home'
  get 'login/new'
  get 'login/create'
  get 'login/destroy'
  resources :users
  resources :books
  
  
  root 'home#home'
  
   get 'home' => 'home#home'
  
    controller :login do
        get 'login' => :new
        post 'login' => :create
        delete 'logout' => :destroy
    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end