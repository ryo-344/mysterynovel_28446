Rails.application.routes.draw do
  resources :reviews, only: [:index, :new]
end

