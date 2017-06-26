Rails.application.routes.draw do
  root :to => 'animals#index'

  resources :sightings

  resources :animals do
    resources :sightings, :except => :show
  end
end
