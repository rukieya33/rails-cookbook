class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    render "categories/index"
  end

  def new
    @categories = Category.create(name: params[:name])
    redirect_to categories_path(@categories)
  end
end
