Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  root 'lessons#index'
  devise_for :users
  resources :lessons do 
    resources :comments
  end
  resources :topics
  resources :comments
  resources :favorites
  resources :charges
end
