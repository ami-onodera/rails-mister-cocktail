# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'

  resources :cocktails, only: %i[index show new create] do
    resources :doses, only: %i[new create]
    resources :reviews, only: %i[new create destroy]
  end
  resources :doses, only: %i[destroy]
end
