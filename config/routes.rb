Rails.application.routes.draw do

    get 'home', to: 'pages#home', as: 'home'
  end

  root to: 'pages#home'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
