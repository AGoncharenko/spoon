Rails.application.routes.draw do
  root to: 'designs#index'
  resources :designs, only: [:index, :show]
end
