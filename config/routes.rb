Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :livros
    end
  end

  resources :livros
end