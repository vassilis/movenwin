Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'

  devise_for :admins

  authenticate :admin do
    namespace :admin do
      get "dashboard" => "dashboard#index"
      get "/" => "dashboard#index"
      resources :questions
    end
  end
end
