Rails.application.routes.draw do
	root to: 'employers#index'
  resources :employers, only: [:index, :show, :new, :create, :delete] do
  	resources :employees, only: [:new, :edit, :create, :delete, :update]
  end
end
