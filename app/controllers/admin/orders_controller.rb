class Admin::OrdersController < ApplicationController
  before_action :set_order, only: [:index,:show, :update]
  
  def index
    @params = params[:id]
    @order = Order.where(customer_id: @params).page(params[:page]).per(10).order(created_at: :desc)
    @orders = Order.page(params[:page]).per(10).order(created_at: :desc)
  end

  def show
    @order_details = @order.order_details.includes(:item)
  end

  def update
    if @order.update(order_params)
      flash[:success] = '注文ステータスが更新されました。'
      redirect_to admin_order_path(@order)
    else
      flash[:error] = '注文ステータスの更新に失敗しました。'
      render :show
    end
  end

  private

  def set_order
    @order = Order.find_by(id: params[:id])
  end
    
  def order_params
    params.require(:order).permit(:status)
  end
end