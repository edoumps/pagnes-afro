require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference("Product.count") do
      post products_url, params: { product: { collection_date: @product.collection_date, description: @product.description, image_url_1: @product.image_url_1, image_url_2: @product.image_url_2, image_url_3: @product.image_url_3, image_url_4: @product.image_url_4, image_url_5: @product.image_url_5, is_featured: @product.is_featured, is_sold_out: @product.is_sold_out, price: @product.price, title: @product.title } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { collection_date: @product.collection_date, description: @product.description, image_url_1: @product.image_url_1, image_url_2: @product.image_url_2, image_url_3: @product.image_url_3, image_url_4: @product.image_url_4, image_url_5: @product.image_url_5, is_featured: @product.is_featured, is_sold_out: @product.is_sold_out, price: @product.price, title: @product.title } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference("Product.count", -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
