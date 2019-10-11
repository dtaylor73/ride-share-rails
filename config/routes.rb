Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  
  root 'homepages#index'
  
  resources :drivers do 
    resources :trips, only: [:new]
  end
  
  
  
  resources :passengers do 
    resources :trips, only: [:create]
  end
  
  resources :trips
  
end
