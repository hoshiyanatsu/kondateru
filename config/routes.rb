Rails.application.routes.draw do
  get 'users/new' => 'users#new'
  get 'users/show' => 'users#show'
  get 'comments/create' => 'comments#create'
  devise_for :users
  resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :meals do
    resources :likes, only: [:create, :destroy]
    resource :comments, only: [:create]
    collection do
      get 'search'
    end
  end
  resources :comments, only: [:destroy]
  root 'meals#index'
end
