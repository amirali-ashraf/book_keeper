Rails.application.routes.draw do
  resources :account_types
  devise_for :users,
             controllers:
             {
               sessions: 'users/sessions',
               registrations: 'users/registrations'
             }

  get 'tests', to: 'tests#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
