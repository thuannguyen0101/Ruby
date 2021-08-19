Rails.application.routes.draw do
  get "/customers", to: "customers#index"
  get "/customers/new", to: "customers#new"
  post "/customers", to: "customers#create"
  get "/customers/:id/update", to: "customers#edit"
end
