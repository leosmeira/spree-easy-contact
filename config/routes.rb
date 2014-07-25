Spree::Core::Engine.routes.draw do
  # Add your extension routes here

  namespace :admin do 
    resources :contacts, :path => "contatos"
    resources :topics, :path => "topicos"
  end

  resources :contacts, :only => [:new, :create], :path => "contatos"
  get "contato" => "contacts#new", :as => :contact

end
