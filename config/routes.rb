Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show] do
    resources :accounts, only: [:index]
  end
  resources :accounts, only: [:show]
end
