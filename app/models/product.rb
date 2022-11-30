class Product < ApplicationRecord
  
  validates :title, presence: true, uniqueness: true
  validates :price, presence: true 
  validates :description, presence: true 

  mount_uploader :image_url_1, ProductImageUploader
  mount_uploader :image_url_2, ProductImageUploader
  mount_uploader :image_url_3, ProductImageUploader
  mount_uploader :image_url_4, ProductImageUploader
  mount_uploader :image_url_5, ProductImageUploader

end
