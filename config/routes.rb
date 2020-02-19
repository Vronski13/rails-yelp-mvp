Rails.application.routes.draw do
  resources :restaurants, only: [:index, :new, :create, :show,] do
    resources :reviews, only: [:index, :new, :create]
  end
  namespace :admin do
    resources :restaurants, only: [:edit, :update, :destroy]
  end
  #resources :reviews, only: [:edit, :show, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
