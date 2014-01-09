class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @etalases = Category.find(params[:id]).etalases.order(:created_at).page params[:page]
    @tutorials = Category.find(params[:id]).tutorials.order(:created_at).page params[:page]
  end
end
