Rails.application.routes.draw do
  root to: "home#index" # rootは/
  get "up" => "rails/health#show", as: :rails_health_check
  get "about", to: "home#about"
end
