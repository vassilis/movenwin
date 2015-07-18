Rails.application.routes.draw do
  resources :questions
  get 'welcome/index'

  root 'welcome#index'

  devise_for :admins

  authenticate :admin do
    namespace :admin do
      get "dashboard" => "dashboard#index"
      get "/" => "dashboard#index"
    end
  end
end
