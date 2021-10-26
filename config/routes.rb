Rails.application.routes.draw do
  devise_for:user
  resources :ad_websites
  get 'home/index'
  get 'home/About_us'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
