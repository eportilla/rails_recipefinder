class RecipesController < ApplicationController
	require 'will_paginate/array'

  def index
  	# Rails method to check nil, empty
  	if params[:search].blank?
  		@search = "chocolate" # default value
  	else
  		@search = params[:search]
  	end
  	@search_for = Recipe.for(@search)|| [] # if returns nil is emty array
  	@recipes = @search_for.paginate(page: params[:page], per_page: 5)
  end
end
