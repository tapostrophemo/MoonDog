ActionController::Routing::Routes.draw do |map|
  map.resources :story_cards

  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"
  
  map.resources :user_sessions
  map.resources :users
  map.resources :main

  map.resources :sign_up
  map.resources :backlog

  map.root :controller => "main"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
