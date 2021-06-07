class Admin::OrdersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]
  layout "admin"
  def index
    @orders = Order.order("id DESC")
  end

  def show
   @order = Order.find(params[:id])
   @product_lists = @order.product_lists
  end

  def require_is_admin
    if !current_user.admin?
      flash[:alert] = 'You are not admin'
      redirect_to root_path
    end
  end

  def admin?
    email == 'caizilun200101@163.com'
  end
end
