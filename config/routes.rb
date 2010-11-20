Devsurfing::Application.routes.draw do

  resources :offices
  resources :cities, :only => [:show]

  match 'search' => 'search#show'
  root :to => "home#index"

end
