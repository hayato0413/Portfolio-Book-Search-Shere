Rails.application.routes.draw do
  devise_for :users, skip: :all
  devise_scope :user do
    get 'login' => 'devise/sessions#new', as: :new_user_session
    post 'login' => 'devise/sessions#create', as: :user_session
    delete 'logout' => 'devise/sessions#destroy', as: :destroy_user_session
    get 'singup' => 'devise/registrations#new', as: :new_user_registration 
    post 'singup' => 'devise/registrations#create', as: :user_registration
    put 'singup' => 'devise/registrations#update'
    get 'user/edit' => 'devise/registrations#edit', as: :edit_user_registration
    
  end

  resources :account, only: [:show]
  
  get "/",              to: 'home#index'
  get 'home/category'
  get 'home/notice'
  get 'home/plan'
  get 'home/readout'
  
  get "sample", to: "sample#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
