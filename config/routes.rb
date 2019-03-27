Rails.application.routes.draw do
  get 'top' => 'home#top'
  get 'monsters/index' => 'monsters#index'
  get 'monsters/new' => 'monsters#new'
  post 'monsters/create' => 'monsters#create'

  get 'monsters/:id' => 'monsters#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
