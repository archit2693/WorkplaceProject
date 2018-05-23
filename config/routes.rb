Rails.application.routes.draw do
	root to: 'employers#index'
  resources :employers
end
