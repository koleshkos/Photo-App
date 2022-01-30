Rails.application.routes.draw do
  resources :images
  devise_for :users
  root 'welcome#index'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
end
