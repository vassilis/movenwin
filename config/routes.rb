Rails.application.routes.draw do

  get 'ads/index'

  get 'ads/:id' => 'ads#show', as: 'ad'
  get 'ads/:id/add_points' => 'ads#add_points', as: 'add_points'

  get 'questions/index'

  devise_for :merchants
  devise_for :users

  get '/users/scan_ticket'
  get '/users/invite'
  get '/users/give_points'
  put '/users/send_invitation'
  put '/users/add_points'
  put '/users/remove_points'
  get 'welcome/index'
  get 'questions' => 'questions#index'
  get 'questions/:id' => 'questions#show', as: 'question'

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
