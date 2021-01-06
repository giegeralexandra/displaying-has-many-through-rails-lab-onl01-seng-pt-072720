Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :appointments, only: [:show]
  resources :doctors
  resources :patients
end
