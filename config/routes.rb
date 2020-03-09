Rails.application.routes.draw do
  get 'coaches/index'
  get 'coaches/show'
  # get 'players/index'
  # get 'players/show'
  # get 'teams/index'
  # get 'teams/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # GET / => teams#index

  root to: 'teams#index'
  
  # GET 'teams', to: 'teams#index'
  # # GET /teams/:id => teams/show
  # GET "teams/:id", to: 'teams#show', id: /\d+/, as: 'team' # team_path
  resources 'teams', only: [:index, :show]
  # same ones get on top of it

  resources 'players', only: [:index, :show]
  # GET /players => players#index
  # GET /players/:id => players#show
end
