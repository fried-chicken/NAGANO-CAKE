class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_details

  enum payment_method: {
    credit_card: 0,
    transfer: 1
  }

  enum status: {
    入金待ち: 0,
    入金確認: 1,
    製作中: 2,
    発送準備中: 3,
    発送済み: 4
  }

  after_update :update_making_status, if: :saved_change_to_status?

  private

  def update_making_status
    if status == "入金確認"
      order_details.update_all(making_status: :製作待ち)
    end
  end
end