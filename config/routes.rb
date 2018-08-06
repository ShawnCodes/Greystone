Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :expenses
      resources :rolls
      resources :capitalizations
      resources :solutions, only: [:index, :show]
    end
  end
end
