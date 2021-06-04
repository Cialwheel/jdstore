class Account::OrdersController < ApplicationController
  before_action :authenticate_user!
  def index
    @orders = Order.all.order("id DESC")
  end
end
