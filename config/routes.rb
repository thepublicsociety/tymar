Template::Application.routes.draw do
  resources :blogs


  resources :secrets


  resources :releases
  resources :coverages
  resources :groups
  resources :events
  resources :sections
  resources :photographs


  get "pages/index"

  devise_for :users
  devise_scope :user do
    get "login", :to => "devise/sessions#new"
    get "logout", :to => "devise/sessions#destroy"
    get "register", :to => "devise/registrations#new"
  end
  
  match '/auth/:provider/callback', to: 'pages#auth'
  match "/secret-email", to: "pages#secret_email"
  match "/secret-content", to: "pages#secret_content"
  match "/secret-password", to: "pages#secret_password"
  match "/secret-selection", to: "pages#secret_selection"
  match "/about", to: "pages#about"
  match "/trailer", to: "pages#trailer"
  match "/join", to: "pages#join"
  match "/press", to: "pages#press"
  root to: "pages#index"

end
