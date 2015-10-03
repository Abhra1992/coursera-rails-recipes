class RecipesController < ApplicationController
  def index
    @query = params[:search] || "chocolate"
    @results = Recipe.for @query
  end
end
