Rails.application.routes.draw do
  get 'top' => 'home#top'
  get 'monsters' => 'monsters#index'
  get 'monsters/new' => 'monsters#new'
  get 'monsters/show/:id' => 'monsters#show'
  post 'monsters' => 'monsters#create'
  get 'monsters/:id/edit' => 'monsters#edit'
  post 'monsters/:id/edit' => 'monsters#update'
  post 'monsters/:id/destroy' => 'monsters#destroy'

  get 'monsters/:id' => 'monsters#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end