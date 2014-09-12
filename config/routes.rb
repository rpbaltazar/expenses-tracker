ExpensesTracker::Application.routes.draw do
  resources :registries
  root 'static_pages#index'

  namespace :api do
    namespace :v1 do
      resources :registries
    end
  end

end
