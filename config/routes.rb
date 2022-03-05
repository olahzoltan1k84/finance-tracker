Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
  get 'my_portfolio', to: 'users#my_portfolio'
  #resources :users
  #delete 'sign_out', to: 'devise/sessions#destroy'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

end
