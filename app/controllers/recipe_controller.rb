class RecipeController < ApplicationController
  def index
    @search_term = params[:looking_for] || 'Chocolate'
    @courses = Recipe.for(@search_term)
  end
end
