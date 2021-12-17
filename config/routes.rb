Rails.application.routes.draw do
  devise_for :users
  root to: 'lessons#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :lessons, only: %i[index]
    end
  end
end
