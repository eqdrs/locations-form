Rails.application.routes.draw do
  root 'addresses#new'

  resources :addresses do
    collection do
      get :cities
      get :streets
    end
  end
end
