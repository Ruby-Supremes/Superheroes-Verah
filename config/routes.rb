Rails.application.routes.draw do
  resources :heroes, only: [:index]
end
