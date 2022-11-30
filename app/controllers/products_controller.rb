class ProductsController < InheritedResources::Base

  private

    def product_params
      params.require(:product).permit(:title, :description, :price, :image_url_1, :image_url_2, :image_url_3, :image_url_4, :image_url_5, :is_featured, :is_sold_out, :collection_date)
    end

end
