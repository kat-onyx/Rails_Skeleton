Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#root"

  namespace :api, defaults: {format: :json} do 
    resources :users do
      resources :projects, only: [:create, :new, :index]
    end
    resources :projects, only: [:show, :edit, :update, :destroy] do 
      resources :comments, except: [:show]
      resources :likes, only: [:index, :update, :destroy]
    end
  end
end
