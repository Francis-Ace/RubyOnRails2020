Rails.application.routes.draw do
  get 'players/index'
  get 'players/show'
  # get 'teams/index'
  # get 'teams/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Get / => teams#index

  root to: 'teams#index'
  # get 'teams', to: 'teams#index'

  # # Get /teams/:id => teams/show

  # get "teams/:id", to: 'teams#show', id: /\d+/, as: 'team' # team_path
  resources 'teams', only: [:index, :show]
  # same 2 get on top of it
end
