Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :lessons, only: %i[index show create]
      resources :sessions, only: %i[create destroy]
    end
  end
  post "/login", to: "sessions#login"
  post "/signup", to: "sessions#signup"
end
