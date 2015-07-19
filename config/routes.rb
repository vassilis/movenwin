Rails.application.routes.draw do
  devise_for :merchants
  devise_for :users
  get 'welcome/index'

  root 'welcome#index'

  devise_for :admins

  authenticate :admin do
    namespace :admin do
      get "dashboard" => "dashboard#index"
      get "/" => "questions#index"
      resources :questions
    end
  end

  authenticate :merchant do
    namespace :merchant do
      get "dashboard" => "dashboard#index"
      get "/" => "ads#index"
      resources :ads
    end
  end
end
