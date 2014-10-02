ExpensesTracker::Application.routes.draw do
  resources :registries
  root 'static_pages#index'

  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'logout', to: 'sessions#destroy', as: :logout, via: [:get, :post]

  namespace :api do
    namespace :v1 do
      resources :registries
    end
  end

end
