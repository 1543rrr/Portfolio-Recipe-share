Rails.application.routes.draw do
<<<<<<< Updated upstream
  
  devise_for :users
=======
  devise_for :users

>>>>>>> Stashed changes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  
  get '/users/:id', to: 'users#show', as: 'user'
end

