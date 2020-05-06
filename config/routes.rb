Rails.application.routes.draw do

devise_for :users

  devise_scope :user do
    authenticated :user do
      root 'appointments#new', as: :authenticated_root
      resources :appointments
      get 'users/sign_out' => "devise/sessions#destroy"
      get 'home', to: 'pages#home', as: 'home'
      resources :users

    end
  end


  root to: 'pages#home'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
