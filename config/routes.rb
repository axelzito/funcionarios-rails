Rails.application.routes.draw do

  resources :contatos
  get 'search/busca'

  get 'home/index'
  root 'home#index'

  #resources :funcionarios
  resources :trabalhadors
  #resources :workspaces
  #resources :job_rules

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
