Rails.application.routes.draw do
	root 'home#index'
        devise_for :users
        get '/landing1', to: 'home#landing1'
        get '/landing2', to: 'home#landing2'
        get '/landing3', to: 'home#landing3'
end
