class CategoriesController < ApplicationController

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(params.require(:category).permit(:name))
    if @category.save
      flash[:notice] = "Category Created"
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def show
    @category = Category.find(params[:id])
  end
end