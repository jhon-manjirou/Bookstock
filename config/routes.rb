Rails.application.routes.draw do
  root 'bookstocks#show'
  get  'edit',  to:'bookstocks#edit'
  resources :bookstocks, only: [:create, :delete]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
