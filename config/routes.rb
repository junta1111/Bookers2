Rails.application.routes.draw do
  get 'books/top'
  devise_for :users
  root to: "homes#top"
  resources :users, only: [:show, :edit]
  resources :books, only: [:new, :create, :index, :show, :destroy]
end
