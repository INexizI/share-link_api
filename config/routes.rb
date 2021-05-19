Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :links do
        resources :titles
      end
    end
  end
end
