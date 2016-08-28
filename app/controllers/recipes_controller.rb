class RecipesController < ApplicationController
	require 'will_paginate/array'

  def index
  	@search = params[:search] || "chocolate"
  	@search_for = Recipe.for(@search)|| []
  	@recipes = @search_for.paginate(page: params[:page], per_page: 5)
  end
end
