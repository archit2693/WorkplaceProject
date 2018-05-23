Rails.application.routes.draw do
	root to: 'employers#index'
  resources :employers, only: [:index, :show, :new, :create, :destroy] do
  	resources :employees, only: [:new, :edit, :create, :destroy, :update]
  end
end
