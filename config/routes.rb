Rails.application.routes.draw do
       
root 'home#index'

          devise_for :users
        get '/etudiants', to: 'home#landing1'



end

