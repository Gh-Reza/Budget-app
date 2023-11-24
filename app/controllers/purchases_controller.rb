class PurchasesController < ApplicationController
  def index
    @category = Category.find(params[:category_id])
    @purchases = @category.purchases.all
  end
end
