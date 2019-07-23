# frozen_string_literal: true

class FilmsController < ApplicationController
  def index
    @films = Tatooine::Film.list
  end

  def show
    @film = Tatooine::Film.get(params[:id])
  end

end
