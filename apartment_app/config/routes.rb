Rails.application.routes.draw do
  resources :add_user_name_to_users
  resources :apartments
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '*path', to: 'pages#root', constraints: -> (request){ request.format.html? }
  root to: 'pages#index'
end
