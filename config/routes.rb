Rails.application.routes.draw do
	root 'home#index'
        devise_for :users
        get '/landing1', to: 'home#landing1'
        post '/landing1', to: 'home#landing1create'

        get '/landing2', to: 'home#landing2'
        post '/landing2', to: 'home#landing2create'

        get '/landing3', to: 'home#landing3'
       	post '/landing3', to: 'home#landing3create'

end
