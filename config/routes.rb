Rails.application.routes.draw do
  get 'dashboard/index'

  get 'login/' => 'login#index'
  post 'login/create/' => 'login#buat_session'
  get 'login/add/' => 'login#add'
  post 'login/create/user' => 'login#create_user'
  get 'dashboard' => 'dashboard#index'



  resources :blogs
  root to:'blogs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
