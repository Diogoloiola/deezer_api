Rails.application.routes.draw do
  namespace :admin, defaults: { format: :json } do
    namespace :v1 do
      resources :podcasts
      resources :tracks
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
