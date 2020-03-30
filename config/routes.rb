Rails.application.routes.draw do
  root 'posts#index'
  resources :posts, only: [:index, :new, :create, :show] do
    collection do
      get 'search'
    end
  end
  
  resources :genre, only: [:index, :show]
  
end
