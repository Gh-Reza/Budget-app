class CategoriesController < ApplicationController
  before_action :authenticate_user!
  def index
    @categories = current_user.categories.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = current_user.categories.build(categories_params)
    if @category.save
      @categories = current_user.categories.all
      redirect_to categories_path
    else
      render html: @category.errors.full_messages
    end
  end

  private

  def categories_params
    params.require(:category).permit(:name, :icon)
  end
end
