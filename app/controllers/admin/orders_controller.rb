class Admin::OrdersController < ApplicationController
  before_action :set_order, only: [:show, :update]

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