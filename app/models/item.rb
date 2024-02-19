class Item < ApplicationRecord
  belongs_to :genre
  has_many :cart_items
  has_many :order_details

  has_one_attached :image
  validates :image, :name, :introduction, :price, :genre_id, presence: true
  validates :is_active, inclusion: { in: [true, false] }
  
  def get_image
    image
  end

end
