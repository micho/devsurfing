Devsurfing::Application.routes.draw do

  resources :offices
  resources :cities, :only => [:show]
  resources :requests, :only => [:new]

  match 'search' => 'search#show'
  root :to => "home#index"

end
