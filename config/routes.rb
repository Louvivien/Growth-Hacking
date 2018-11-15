Rails.application.routes.draw do
<<<<<<< HEAD
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
=======
  devise_for :users
	root'home#index'

>>>>>>> 4c725c92ecc40d5bee9dc885e76ce0cff511aa9e
end
