ActionController::Routing::Routes.draw do |map|
  map.resources :sign_up

  map.root :controller => "main"


  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
