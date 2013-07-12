Omrails::Application.routes.draw do
  get "users/show"
  get "user/show"
  resources :pins

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  match 'users/:id' => 'users#show', as: :user
  get 'about' => 'pages#about'
  root :to => 'pins#index'
  
  # Omniauth
  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'
end