Rails.application.routes.draw do
  get 'products/info', to: 'products#info'

  root :to => 'products#info'

  resources :products
end
