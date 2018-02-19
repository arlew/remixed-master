Rails.application.routes.draw do
  get '/', to: 'root#index'

  resources :artists, only: [:index, :new, :create, :show]
end
