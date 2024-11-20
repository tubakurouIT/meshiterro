Rails.application.routes.draw do
  devise_for :users

  resources :post_images, only: [:new, :index, :show]

    root to: "homes#top"
    get 'homes/about' => 'homes#about', as: 'about'

end
