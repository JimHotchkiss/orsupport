Rails.application.routes.draw do

  root "categories#index"
  resources :categories
  resources :users, :only => [:new, :create]

  resources :issues do
    resources :comments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
