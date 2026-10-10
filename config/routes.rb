Rails.application.routes.draw do
  root "items#index"

  resources :items do
    member do
      patch :resolve
    end
  end
end
