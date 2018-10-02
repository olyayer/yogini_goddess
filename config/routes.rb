Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

    # resources :videos, :only [:index, :show]
    get 'videos', to: 'videos#index'
    get 'videos/:id', to: 'videos#show', as: :video

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
