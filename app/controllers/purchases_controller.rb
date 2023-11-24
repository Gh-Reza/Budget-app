class PurchasesController < ApplicationController
  before_action :authenticate_user!
  attr_reader :purchase

  def index
    @category = Category.find(params[:category_id])
    @purchases = current_user.purchases.joins(:categories)
      .where(categories: { id: @category.id }).order(created_at: :desc)
  end

  def new
    @purchase = Purchase.new
    @categories = current_user.categories.all
  end

  def create
    @purchase = current_user.purchases.build(purchases_params)
    if @purchase.save
      @purchase.category_ids = params[:purchase][:category_ids] if params[:purchase][:category_ids].present?

      redirect_to category_purchases_path
    else
      render html: @purchase.errors.full_messages
    end
  end

  private

  def purchases_params
    params.require(:purchase).permit(:amount, :name, category_ids: [])
  end
end
