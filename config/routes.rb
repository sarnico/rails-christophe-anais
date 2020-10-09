Rails.application.routes.draw do

devise_for :users

  devise_scope :user do
    authenticated :user do
      root 'appointments#new', as: :authenticated_root
      resources :appointments
      resources :users, only: [:new]
      post 'create_user', to: "users#create"
      resources :dates
    end
    get 'users/sign_out' => "devise/sessions#destroy"
    get 'home', to: 'pages#home', as: 'home'
  end


  root to: 'pages#home'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
