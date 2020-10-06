Rails.application.routes.draw do
  devise_for :users
  root to: "company#index"
  resources :company
  resources :scenes
  resources :user do
    collection do
      get 'search'
    end
  end
  # post "/scene/new" => "scene#new"
end
