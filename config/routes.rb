Rails.application.routes.draw do
  get 'users/index'
  post 'users/edit'
  get 'users/show'
  get 'topics/show'
  root 'lessons#index'
  devise_for :users
  resources :lessons
  resources :topics
  resources :comments
  resources :favorites
  resources :charges
end
