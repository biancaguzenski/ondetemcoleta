Rails.application.routes.draw do
  resources :collection_points
  root 'collection_points#home'
  get 'home', to: "collection_points#home"
end
