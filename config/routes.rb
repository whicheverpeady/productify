Rails.application.routes.draw do
  devise_for :users
  root 'categories#index'

  resources :categories do
    resources :lists do
      resources :items
    end
  end

end
