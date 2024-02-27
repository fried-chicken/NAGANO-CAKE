class HomesController < ApplicationController
  def top
    @new_items = Item.where(is_active: true).order(created_at: :desc).limit(4)
    # where(is_active: true)で販売中の商品のみ取得、order(created_at: :desc).limit(4)で最新の４件まで取得
  end

  def about
  end
end
