Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :users
  end

  resources :leave_events

  root "welcome#index"
end
