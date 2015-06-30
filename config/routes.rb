Rails.application.routes.draw do
  get 'games/index'

  get 'user_sessions/new'

  get 'user_sessions/create'

  get 'user_sessions/destroy'

  get 'informations/index'

  resources :users
 

	root :to => 'games#index'
	  resources :games
	  resources :user_sessions
	  resources :users

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

  get 'posts' => 'post/create', :as => :posts
end
