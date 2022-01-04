Rails.application.routes.draw do
  resources :comments
  resources :posts
  root "static_pages#home"
  devise_for :users
  as :user do
    get '/signout', to: 'devise/sessions#destroy'
    resources :users
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
