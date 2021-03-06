Rails.application.routes.draw do
  devise_for :users, :paths => 'users'

  
    
  resources :users do
    resources :playlists, :places 
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :themes do  
    resources :categories
  end

  resources :categories do
    resources  :playlists, :places
  end

  resources :playlists, :places do
    resources :links
  end

  root "themes#index"
end

