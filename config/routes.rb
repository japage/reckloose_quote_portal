RecklooseQuotePortal::Application.routes.draw do
  resources :questions

  devise_for :users
  root 'quotes#new'
  resources :quotes
  resources :answers, only: [:create, :update]
end
