Rails.application.routes.draw do
  resources :magics
  resources :monsters
  root :to => 'monsters#index'

end