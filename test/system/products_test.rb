require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "should create product" do
    visit products_url
    click_on "New product"

    fill_in "Collection date", with: @product.collection_date
    fill_in "Description", with: @product.description
    fill_in "Image url 1", with: @product.image_url_1
    fill_in "Image url 2", with: @product.image_url_2
    fill_in "Image url 3", with: @product.image_url_3
    fill_in "Image url 4", with: @product.image_url_4
    fill_in "Image url 5", with: @product.image_url_5
    check "Is featured" if @product.is_featured
    check "Is sold out" if @product.is_sold_out
    fill_in "Price", with: @product.price
    fill_in "Title", with: @product.title
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "should update Product" do
    visit product_url(@product)
    click_on "Edit this product", match: :first

    fill_in "Collection date", with: @product.collection_date
    fill_in "Description", with: @product.description
    fill_in "Image url 1", with: @product.image_url_1
    fill_in "Image url 2", with: @product.image_url_2
    fill_in "Image url 3", with: @product.image_url_3
    fill_in "Image url 4", with: @product.image_url_4
    fill_in "Image url 5", with: @product.image_url_5
    check "Is featured" if @product.is_featured
    check "Is sold out" if @product.is_sold_out
    fill_in "Price", with: @product.price
    fill_in "Title", with: @product.title
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "should destroy Product" do
    visit product_url(@product)
    click_on "Destroy this product", match: :first

    assert_text "Product was successfully destroyed"
  end
end
