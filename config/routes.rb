Rails.application.routes.draw do
  
  devise_for :users

  resources :post_images, only: [:new, :create, :index, :show, :destroy]

  resources :users, only: [:show, :edit, :update]

    root to: "homes#top"
    get 'homes/about' => 'homes#about', as: 'about'

end
