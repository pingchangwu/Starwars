# frozen_string_literal: true

# films controller and ajax endpoint to render data
class FilmsController < ApplicationController
  def index; end

  def show
    @film = Tatooine::Film.get(params[:id])
  rescue Tatooine::NotFound => e
    render status: 404
  end

  def films_render
    @films = Tatooine::Film.list
    render partial: 'films'
  end

  def characters_render
    @characters = Tatooine::Film.get(params[:id]).characters
    render partial: 'characters'
  end

  def vehicles_render
    @vehicles = Tatooine::Film.get(params[:id]).vehicles
    render partial: 'vehicles'
  end

  def planets_render
    @planets = Tatooine::Film.get(params[:id]).planets
    render partial: 'planets'
  end
end
