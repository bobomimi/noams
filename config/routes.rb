Rails.application.routes.draw do
  devise_for :admins
  root 'welcome#index'

  get 'welcome/about'

  resources :blogs
  resources :products
  resources :contacts, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
