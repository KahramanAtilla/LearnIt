Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'topics/show'
  get 'kit_ui/index'
  root 'lessons#index'
  devise_for :users
  resources :lessons
  resources :topics
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
