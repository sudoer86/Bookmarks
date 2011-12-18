Bookmarks::Application.routes.draw do
  root to: "bookmarks#index"
  resources :bookmarks
end
