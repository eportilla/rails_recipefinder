class RecipesController < ApplicationController
	require 'will_paginate/array'

  def index
  	# Rails method to check nil, empty
  	if params[:search].blank?
      @search = "chocolate" # load default search
    else
      @search = params[:search]
    end

    @search_for = Recipe.for(@search)|| [] # if returns nil is emty array

    if @search_for.present?
      @recipes = @search_for.paginate(page: params[:page], per_page: 9)
    else
      @recipes = []
    end

  end

end
