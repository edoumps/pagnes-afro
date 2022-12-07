class Product < ApplicationRecord
  
  validates :title, presence: true, uniqueness: true
  validates :price, presence: true 
  validates :description, presence: true 

  mount_uploader :image_url_1, ProductImageUploader
  mount_uploader :image_url_2, ProductImageUploader
  mount_uploader :image_url_3, ProductImageUploader
  mount_uploader :image_url_4, ProductImageUploader
  mount_uploader :image_url_5, ProductImageUploader

  has_many :order_items
  before_destroy :ensure_not_referenced_by_any_line_item
#...
  private
  # ensure that there are no line items referencing this product
  def ensure_not_referenced_by_any_line_item
    unless order_items.empty?
      errors.add(:base, 'Order Items present')
      throw :abort
    end
  end

end
