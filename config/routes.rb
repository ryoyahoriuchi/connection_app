Rails.application.routes.draw do
  get 'relationships/create'
  get 'relationships/destroy'
  resources :users, only: %i[ new create show index ]
  resources :sessions, only: %i[ new create destroy ]
  resources :relationships, only: %i[ create destroy ]
  resources :conversations do
    resources :messages
  end
end
