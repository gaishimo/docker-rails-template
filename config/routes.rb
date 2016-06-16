Rails.application.routes.draw do
  devise_for :users
  get 'home' => 'home#index'
  post 'auth_user' => 'authentication#authenticate_user'
end
