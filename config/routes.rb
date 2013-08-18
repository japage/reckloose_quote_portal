RecklooseQuotePortal::Application.routes.draw do
 
	devise_for :users
	root 'quotes#new'
	resources :quotes
	resources :questions

end
