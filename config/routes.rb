Rails.application.routes.draw do
  scope "(:locale)", locale: /zh-TW|en/ do
    devise_for :users, controllers: {:registrations => "users"}

    resources :leave_events do
      member do
        post :verify
        post :reject
      end
    end

    resources :users

    root "welcome#index"
  end
end
