Rails.application.routes.draw do
  devise_for :users
  root to: "events#index"
  resources :events do
    resources :categories, only: [:index, :create]
  end
end
