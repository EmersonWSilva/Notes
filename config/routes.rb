Rails.application.routes.draw do
  root to: 'pages#home'
  resources :notes, only: %i[ create destroy ]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.  root 'pages#index'
end
