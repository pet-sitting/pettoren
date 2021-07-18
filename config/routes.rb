Rails.application.routes.draw do
  devise_for :users
  root to: 'pets#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :pets do
    resources :bookings, only: [:create]
  end
  get "dashbord", to: 'dashboards#display'
  patch "bookings/:id", to: 'bookings#update'
end
