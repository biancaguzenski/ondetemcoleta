Rails.application.routes.draw do
  resources :collection_points
  get 'contact/new'
  root 'collection_points#home'
  get 'home', to: "collection_points#home"
end
