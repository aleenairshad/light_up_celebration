Rails.application.routes.draw do
	devise_for :users, path: 'users'
	# eg. http://localhost:3000/users/sign_in
	devise_for :admins, path: 'admins'
	# eg. http://localhost:3000/admins/sign_in
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  	namespace :api do
  		namespace :v1 do
  			namespace :users do
  				resources :customers
  				resources :registrations, only:[:create]
  				resources :sessions
  				resources :vendors
  			end
  		end
  	end

	authenticated :admin do
		root :to => 'homes#index'
	end
    root 'homes#index'
end
