Rails.application.routes.draw do
  resources :sweeps do
    resources :horses do
      put :register_horse, on: :collection
      put :assign_horse, on: :collection
    end
  end
  root "sweeps#index"
end



