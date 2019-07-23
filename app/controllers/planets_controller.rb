# frozen_string_literal: true

class PlanetsController < ApplicationController
  def index
    @planets = Tatooine::Planet.list
  end

  def show
    @planet = Tatooine::Planet.get(params[:id])
  end
end
