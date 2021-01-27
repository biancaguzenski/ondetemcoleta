Rails.application.routes.draw do
  resources :collection_points
  get 'contact/new'
  root 'collection_points#home'
  get 'home', to: "collection_points#home"
  get 'about', to: "collection_points#about"
  get 'contact', to: "collection_points#contact"
end
