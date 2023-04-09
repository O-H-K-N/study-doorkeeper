Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users

  namespace :api do
    namespace :v1 do
      get '/me' => 'users#me'
    end
  end

  root "pages#index"
end
