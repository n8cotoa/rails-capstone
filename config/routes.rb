Rails.application.routes.draw do
  root to: 'groups#index'
  devise_for :users
  resources :groups do
    get :raidroom
  end
  
  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
