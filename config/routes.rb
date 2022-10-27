Rails.application.routes.draw do
  get 'users/profile'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  get '/u/:id', to: 'users#profile', as: 'user'
  resources :posts
  get 'about', to: 'pages#about'
  get 'posts', to: 'posts#posts'

  #TBD: fixed sign out routing error------not sure how
  devise_scope :user do
    get 'users/sign_out' => "devise/sessions#destroy"
  end
  
  # Defines the root path route ("/")
  root "pages#home"
end
