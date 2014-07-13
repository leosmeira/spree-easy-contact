Spree::Core::Engine.routes.draw do
  # Add your extension routes here

  namespace :admin do 
    resources :contacts
    resources :topics
  end

  resources :contacts, :only => [:new, :create]
  get "contact" => "contacts#new"

end
