Rails.application.routes.draw do
  devise_for :users #, controllers: { sessions: 'users/sessions' }
  root "events#index"
  
  
  resources :events
  resources :users, only: [:show] 
  resources :attended_events
 

  
end
