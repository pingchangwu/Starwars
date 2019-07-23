# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :people, only: %w[index show]
  resources :vehicles, only: %w[index show]
  resources :films, only: %w[index show]
  resources :planets, only: %w[index show]
end
