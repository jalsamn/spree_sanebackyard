Spree::Core::Engine.routes.draw do
  namespace :spree do
    resources :vendors
  end
  namespace :admin  do
    
    #Routes related to Cases Controller
    get 'cases/receive'
    post 'cases/processbarcode'
    post 'cases/numberofcase'
    post 'cases/processcase'
    resources :cases 
  end

  # Add your extension routes here
end
