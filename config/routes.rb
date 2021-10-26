Rails.application.routes.draw do
  devise_for :users
  get 'home/about' => 'homes#about'
  root 'homes#top'
  resources :users,only: [:show,:index,:edit,:update]
  resources :books do
    resources :book_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end
end