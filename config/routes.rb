Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'users/index'
      get 'users/show'
      get 'users/create'
      get 'users/update'
      get 'users/delete'
    end
  end
end
