# frozen_string_literal: true

# planets controller and ajax endpoint to render data
class PlanetsController < ApplicationController
  def index
    @planets = Tatooine::Planet.list
  end

  def show
    @planet = Tatooine::Planet.get(params[:id])
  rescue Tatooine::NotFound => e
    render status: 404
  end
end
