class CategoriesController < ApplicationController
    #before_action :set_category, only: %i[new create]
  def index
    @categories = Category.all
    render "categories/index"
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path(@category)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @category = Category.new
    render "categories/new"
  end

  def show
    @category = Category.find(params[:id])
  end

  private

=begin def set_category
    @category = Category.find(params[:category_id])
  end
=end
  def category_params
    params.require(:category).permit(:name)
  end

end
