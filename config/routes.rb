Rails.application.routes.draw do
  get 'camp/index'
  get 'camp/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
  root 'static_pages#top'
  resources :users, only: %i[new create]
  resources :items, only: %i[index new create destroy]
  resources :user_items, only: %i[index create destroy]
  resources :serch_user_items, only: %i[index]
  resources :makers, only: %i[index new create update destroy]
  resources :camps, only: %i[index new create show update destroy]
  resources :camp_items, only: %i[index new create show destroy]
  get 'makers/api', to: 'makers#api'
end
