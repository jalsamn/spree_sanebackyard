Spree::Core::Engine.routes.draw do
  namespace :admin  do
    get 'cases/receive'
    post 'cases/processbarcode'
    resources :cases 
  end

  # Add your extension routes here
end
