Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'rolls/index'
      get 'rolls/show'
      get 'rolls/create'
      get 'rolls/update'
      get 'rolls/delete'
    end
  end
  namespace :api do
    namespace :v1 do
      get 'capitalizations/index'
      get 'capitalizations/show'
      get 'capitalizations/create'
      get 'capitalizations/update'
      get 'capitalizations/delete'
    end
  end
  namespace :api do
    namespace :v1 do
      get 'expenses/index'
      get 'expenses/show'
      get 'expenses/create'
      get 'expenses/update'
      get 'expenses/delete'
    end
  end
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
