RecklooseQuotePortal::Application.routes.draw do
  devise_for :users
  root 'quotes#new'
  resources :quotes
  resources :answers, only: [:create, :update]
end
