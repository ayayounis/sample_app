Rails.application.routes.draw do
  root 'static_pages#home'
  get '/help',to: 'static_pages#help', as:'help'
  get 'static_pages/about' => 'static_pages#about'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
end
