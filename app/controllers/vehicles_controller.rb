# frozen_string_literal: true

class VehiclesController < ApplicationController
  def index
    @vehicles = Tatooine::Vehicle.list
    end

  def show
    @vehicle = Tatooine::Vehicle.get(params[:id])
  end
end
