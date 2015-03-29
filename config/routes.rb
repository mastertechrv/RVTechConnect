Rails.application.routes.draw do
	
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :manufacturers
  resources :campers
  resources :rvs

 root 'home#index'

 	devise_for :customers
 	get '/login', to: redirect('customers/sign_in')
 	get '/customer', to: redirect('customers/sign_in')

end
