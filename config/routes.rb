
Rails.application.routes.draw do
	get 'sessions/new'
	
  root 'pages#home'
  get 'answer', to: 'pages#page_secrete'
  resources :users

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
