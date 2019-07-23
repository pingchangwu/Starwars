# frozen_string_literal: true

class PeopleController < ApplicationController
  def index
    @people = Tatooine::Person.list
    end

  def show
    @person = Tatooine::Person.get(params[:id])
  end
end
