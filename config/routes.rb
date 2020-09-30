Rails.application.routes.draw do
  devise_for :users
  root to: "company#index"
  resources :company
  resources :user do
    collection do
      get 'search'
    end
  end
end
