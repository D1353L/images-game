Rails.application.routes.draw do
  root 'pages#home'

  get 'home', to: 'pages#home'
  get 'game', to: 'pages#game'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :images, only: :index do
        post :upload, on: :collection
      end
      resources :plays, only: %i[index create]
    end
  end
end
