Rails.application.routes.draw do
  root to: 'static_pages#index'
  devise_for :users
  resources :groups do
    get :raidroom
    post :leave_raidroom
  end
  
  get 'destiny-raid-a-long', :to => 'static_pages#index'
  
  resources :chat_rooms, only: [:show]
  
  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
