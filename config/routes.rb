Rails.application.routes.draw do
  root 'poets#index'
  resources :poets do
    resources :poems, only: :create
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
