RecklooseQuotePortal::Application.routes.draw do
 
	devise_for :users
	root 'quotes#index'
	resources :quotes
	resources :questions
	resources :choices, only: [:create, :destroy, :update]


end
