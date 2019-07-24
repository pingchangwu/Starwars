# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :planets, only: %w[index show]
  resources :people, only: %w[index show]
  resources :vehicles, only: %w[index show]
  resources :films, only: %w[index show]
  get :characters_render, controller: :films
  get :vehicles_render, controller: :films
  get :planets_render, controller: :films
  get :films_render, controller: :films
end
