Rails.application.routes.draw do
  root to: "articles#index" # rootは/
  get "up" => "rails/health#show", as: :rails_health_check
end
