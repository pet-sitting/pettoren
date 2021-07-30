Rails.application.routes.draw do
  get 'bookings/confirm'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :pets do
    resources :bookings, only: [:create]
    resources :pet_schedules, only: [:new, :create]
  end
  get "dashboard", to: 'dashboards#display'
  resources :bookings, only: [:update]
end
