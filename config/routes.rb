Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :picture_and_contents do
    collection do
      post 'confirm'
    end
  end
end