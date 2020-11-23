Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users do
    resources :accounts do
      resources :movements
    end
  end
  resources :accounts
  resources :movements

end
