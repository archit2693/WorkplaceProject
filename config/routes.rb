Rails.application.routes.draw do
	root to: 'employers#index'
  resources :employers, only: [:index, :show, :new, :create, :delete]
end
