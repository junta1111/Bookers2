Rails.application.routes.draw do
  get 'books/top'
  devise_for :users
  root to: "homes#top"
  resources :users
  resources :books
  get "/home/about" => "homes#about", as: "about"
  post 'books' => 'books#create' 
  patch 'books/:id' => 'books#update', as: 'update_book'
end
