Rails.application.routes.draw do
  
  devise_for :users,
  # devise_for :users
  #For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  controllers: { registrations: 'registrations' }
  root 'pages#home'
  
  get '/users/:id', to: 'users#show', as: 'user'

  resources :posts, only: %i(new create) do
    resources :photos, only: %i(create)
  end
  
end


