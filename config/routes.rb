Rails.application.routes.draw do
  resources :collection_points
  root 'collection_points#index'
end
