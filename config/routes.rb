Rails.application.routes.draw do
  get 'static_pages/hangman'

  get 'static_pages/tictactoe'

  get 'games/index'

  get 'user_sessions/new'

  get 'user_sessions/create'

  get 'user_sessions/destroy'

  get 'static_pages/hangman'

  resources :users

  resources :users do
    resources :comments
  end
 

	root :to => 'games#index'
	  resources :games
	  resources :user_sessions
	  resources :users

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

  get '/informations' => 'informations#index'

  


end
