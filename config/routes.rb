Rails.application.routes.draw do
  root 'lists#index'
  resources :lists do
    resources :bookmarks, only: :create
  end
end
