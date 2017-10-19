# Rails.application.routes.draw do
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end
Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
  		# devise_for :users
      	# resources :sessions, only: [:create, :destroy]
      	post 'auth' => 'authentication#authenticate_user'
      	get 'home' => 'home#index'
        get 'categories' => 'categories#index'
        get 'tags' => 'tags#index'
      	resources :questions, only: [:index, :create, :show, :destroy]
      	resources :answers, only: [:create, :destroy]

    end
  end
end
