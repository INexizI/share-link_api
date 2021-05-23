Rails.application.routes.draw do
  # root to: redirect('/api/v1/links')

  namespace :api do
    namespace :v1 do
      resources :links

      post 'authenticate', to: 'authentication#create'
    end
  end
end
