Rails.application.routes.draw do
  get 'books/top'
  devise_for :users
  root to: "homes#top"
  resources :users
  resources :books
  get "/homes/about" => "homes#about", as: "about"
end
