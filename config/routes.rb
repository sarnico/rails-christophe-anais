Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root 'appointments#new', as: :authenticated_root
    end
  end

  root to: 'pages#home'
  resources :apointments, only: [:new]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
