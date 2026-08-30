Rails.application.routes.draw do
=begin
  get "/products", to: "products#index" # show all records
  get "/products/new", to: "products#new" # show form for creating new record
  post "/products", to: "products#create" # process new form, handle errors, create record
  get "/products/:id", to: "products#show" # show specific record
  get "/products/:id/edit", to: "products#edit" # show form for updating record
  put "/products/:id", to: "products#update" # handle edit form, handle errors, update ENTIRE record
  patch "/products/:id", to: "products#update" # handle edit form, handle errors, update SPECIFIC attributes of record
  delete "/products/:id", to: "products#destroy" # handle deleting specific record
=end

  resources :products # does everything above ^^^
  root "products#index"
end
