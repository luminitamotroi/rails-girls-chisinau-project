Rails.application.routes.draw do
	mount Attachinary::Engine => '/attachinary'
	resources :cases do
  resources :updates, only: :create
end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
			authenticated :user do
	          root to: "cases#index", as: :authenticated_root
	          get "domains/:domain_type" => "domains#filter", as: :domain_filter
	        end
		root to: "pages#landing"
  get "features" => "pages#features"
  get "landing" => "pages#landing"
  resources :users, only: [:show]
end


