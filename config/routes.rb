Rails.application.routes.draw do
  root 'locations#new'

  resources :locations do
    collection do
      get :cities
      get :streets
    end
  end
end
