class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @etalases = Category.find(params[:id]).etalases
    @tutorials = Category.find(params[:id]).tutorials
  end
end
