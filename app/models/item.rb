class Item < ApplicationRecord
  belongs_to :genre
  has_many :cart_items, dependent: :destroy
  has_many :order_details

  has_one_attached :image
  validates :image, :name, :introduction, :price, :genre_id, presence: true
  validates :is_active, inclusion: { in: [true, false] }
  
  def get_image
    image
  end
  
  def with_taxin_price
        price*1.1
  end

end
