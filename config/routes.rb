Rails.application.routes.draw do
  devise_for :users
  root to: "company#index"
  # resources: company
end
