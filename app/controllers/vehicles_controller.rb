# frozen_string_literal: true

# vehicles controller and ajax endpoint to render data
class VehiclesController < ApplicationController
  def index
    @vehicles = Tatooine::Vehicle.list
  end

  def show
    @vehicle = Tatooine::Vehicle.get(params[:id])
  rescue Tatooine::NotFound => e
    render status: 404
  end
end
