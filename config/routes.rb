Rails.application.routes.draw do
  root "home#index"
  resource :contact_requests, only: [:create], format: false
end
