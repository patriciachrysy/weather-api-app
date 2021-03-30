Rails.application.routes.draw do
  resources :users, only: %i[new create show]
  get '/sign_in' => 'users#sign_in'
  post '/sign_in' => 'users#sign_in'
  get '/sign_up' => 'users#new'
  get '/sign_out' => 'users#sign_out'
  namespace :api do
    namespace :v1 do
      get '/weather' => 'weather#get_weather'
    end
  end
  root 'users#index'
end
