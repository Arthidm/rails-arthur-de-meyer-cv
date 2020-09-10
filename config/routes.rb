Rails.application.routes.draw do
  resources :mycvs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'mycvs#index#index'
  get 'about', to: 'mycvs#index'

  resources :pages
end
