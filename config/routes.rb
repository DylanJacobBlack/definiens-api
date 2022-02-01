Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :lessons, only: %i[index show create]
      resources :sessions, only: %i[create destroy]
      resources :words, only: %i[index show create update]
    end
  end
  resources :users, param: :_username
  post '/auth/login', to: 'authentication#login'
  post '/word', to: 'definition#lookup'
  get '/*a', to: 'application#not_found'
end
