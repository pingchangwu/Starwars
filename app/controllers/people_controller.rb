# frozen_string_literal: true

# people controller and ajax endpoint to render data
class PeopleController < ApplicationController
  def index
    @people = Tatooine::Person.list
  end

  def show
    @person = Tatooine::Person.get(params[:id])
  rescue Tatooine::NotFound => e
    render status: 404
  end
end
