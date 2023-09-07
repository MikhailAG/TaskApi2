Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create, :update] do
        resources :tasks, only: [:index, :show, :create, :update]
      end
    end
  end
end
