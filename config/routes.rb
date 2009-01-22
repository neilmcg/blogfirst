ActionController::Routing::Routes.draw do |map|
  map.resources :posts, :has_many => :comments
end
