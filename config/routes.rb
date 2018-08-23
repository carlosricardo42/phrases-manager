Rails.application.routes.draw do
  # Add the REST paths for the phrases
  resources :phrases, except: :edit do
    put :vote # Add the vote path
  end

  # New route for the raitings
  get 'raitings', to: "phrases#raitings"

  # Add the REST paths for the people
  resources :people, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'phrases#index' #Set the root path to index view of phrases
end
