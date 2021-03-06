Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'cocktails#home'

  resources :cocktails, only: [ :index, :new, :show, :create ] do
    resources :doses, only: [ :new, :create ]
  end

  resources :doses, only: [ :destroy ]

end
