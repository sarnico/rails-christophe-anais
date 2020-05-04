Rails.application.routes.draw do


  devise_scope :user do
    authenticated :user do
      root 'appointments#new', as: :authenticated_root
      get 'users/sign_out' => "devise/sessions#destroy"
      get 'home', to: 'pages#home', as: 'home'
      resources :users

    end
  end

  devise_for :users

  root to: 'pages#home'
  resources :appointments

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
