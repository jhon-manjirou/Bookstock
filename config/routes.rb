Rails.application.routes.draw do
  root 'bookstocks#show'
  get  'edit',  to:'bookstocks#edit'
  resources :bookstocks, only: [:create, :destroy]
end
