class Public::OrdersController < ApplicationController
  def new
    @oreder = Order.new
    @customer = current_customer

  end

  def confirm
  end

  def thanks
  end

  def index
  end

  def show
  end
end
