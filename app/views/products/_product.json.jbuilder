json.extract! product, :id, :title, :description, :price, :image_url_1, :image_url_2, :image_url_3, :image_url_4, :image_url_5, :is_featured, :is_sold_out, :collection_date, :created_at, :updated_at
json.url product_url(product, format: :json)
