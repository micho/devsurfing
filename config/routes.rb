Devsurfing::Application.routes.draw do

  resources :offices

  match 'search' => 'search#show'
  root :to => "home#index"

end
