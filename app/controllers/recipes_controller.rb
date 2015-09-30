class RecipesController < ApplicationController
  def index
    @query = params[:search] || "chocolate"
  end
end
