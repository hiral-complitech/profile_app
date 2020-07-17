Rails.application.routes.draw do
  resources :profiles
  root to: "homes#index"
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations', passwords: 'users/passwords' }
  post "/search", to: "homes#search", as: :search
  post "/filter", to: "homes#filter", as: :filter
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
