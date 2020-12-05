Rails.application.routes.draw do
  devise_for :users
  root to: "companies#index"
  resources :companies
  resources :scenes
  resources :user do
    collection do
      get 'search'
    end
  end
end
