# Rails.application.routes.draw do
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end
Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
  		# devise_for :users
      	# resources :sessions, only: [:create, :destroy]
      	post 'auth' => 'authentication#authenticate_user'
      	post 'auth' => 'authentication#create'
      	get 'home' => 'home#index'
        get 'categories' => 'categories#index'
        get 'tags' => 'tags#index'
        post 'users' => 'users#create'
      	resources :questions, only: [:index, :create, :show, :destroy]
      	resources :answers, only: [:create, :destroy]
        mount ActionCable.server => '/cable'

    end
  end
end
