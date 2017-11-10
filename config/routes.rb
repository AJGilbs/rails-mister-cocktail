Rails.application.routes.draw do



  resources :cocktails, only: [ :new, :create, :index, :show] do
    resources :doses, only: [ :new, :create ]
  end
  root to: 'cocktails#index'
  resources :doses, only: [ :destroy ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
