Rails.application.routes.draw do
  root "items#index"
  resources :people
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :items do
    member do
      patch :resolve
    end
  end
end
