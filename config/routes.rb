Rails.application.routes.draw do
  # get 'teams/index'
  # get 'teams/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Get / => teams#index

  root to: 'teams#index'

  # Get /teams/:id => teams/show

  get "teams/:id", to: 'teams#show', id: /\d+/, as: 'team' # team_path
end
