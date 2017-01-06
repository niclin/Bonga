Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :users
  end

  resources :leave_events do
    member do
      post :verify
    end
  end

  resources :users

  root "welcome#index"
end
