Rails.application.routes.draw do
  resources :horses do
    put :register_horse, on: :collection
    put :assign_horse, on: :collection

  end

  root "horses#index"
end



