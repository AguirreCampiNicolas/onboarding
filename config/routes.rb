Rails.application.routes.draw do
  root to: "home#index"
  # get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  Rails.application.routes.draw do
  get 'home/index'
    devise_for :admins, controllers: {
      sessions: 'admins/sessions',
      registrations: 'admins/registrations',
      passwords: 'admins/passwords'
    }

    devise_for :clients, controllers: {
      sessions: 'clients/sessions',
      registrations: 'clients/registrations',
      passwords: 'clients/passwords'
    }

    devise_for :suppliers, controllers: {
      sessions: 'suppliers/sessions',
      registrations: 'suppliers/registrations',
      passwords: 'suppliers/passwords'
    }
  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :products, only: [:index, :show]
end
