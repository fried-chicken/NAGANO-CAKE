class OrderDetail < ApplicationRecord
  belongs_to :order
  belongs_to :item

  enum making_status: {
    制作不可: 0,
    製作待ち: 1,
    製作中: 2,
    製作完了: 3
  }

  after_update :update_order_status, if: :saved_change_to_making_status?

  private

  def update_order_status
    if making_status == "製作中"
      order.update(status: :製作中)
    elsif making_status == "製作完了" && order.order_details.all? { |detail| detail.making_status == "製作完了" }
      order.update(status: :発送準備中)
    end
  end
end