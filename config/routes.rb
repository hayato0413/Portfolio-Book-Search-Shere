Rails.application.routes.draw do
  get 'home/index'
  get 'home/category'
  get 'home/notice'
  get 'home/plan'
  get 'home/readout'

  get 'account/sign_up'
  get 'account/sign_in'
  
  get "sample", to: "sample#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
