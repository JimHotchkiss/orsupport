Rails.application.routes.draw do

  root "categories#index"

  get '/login' => "sessions#new"
  get '/list' => "lists#index"
  post '/sessions' => "sessions#create"
  get '/logout' => "sessions#destroy"

  resources :categories
  resources :users, :only => [:new, :create]

  resources :issues do
    resources :comments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
