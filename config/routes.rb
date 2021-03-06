Rails.application.routes.draw do
  
  get 'tops/index'

  get 'tops/index'
  root to: "tops#index"

  resources :blogs do
    collection do
      post :confirm
    end
  end
  
  resources :contacts

  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]

end