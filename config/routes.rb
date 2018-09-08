Rails.application.routes.draw do

  root "categories#index"

  get '/login' => "sessions#new"
  post '/sessions' => "sessions#create"
  get '/logout' => "sessions#destroy"

  resources :categories
  resources :users, :only => [:new, :create]

  resources :issues do
    member do
      put "like", to: "issues#upvote"
    end
      resources :comments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
