Rails.application.routes.draw do
  resources :dossiers do
    resources :biens
  end
end
