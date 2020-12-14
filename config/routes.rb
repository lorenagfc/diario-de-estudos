Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #get 'study_items/new', to: 'study_items#new'

  root to: 'home#index'
  resources :study_items, only: [:new, :create, :edit, :update, :destroy, :index]
end
