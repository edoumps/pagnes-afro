ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :description, :price, :image_url_1, :image_url_2, :image_url_3, :image_url_4, :image_url_5, :is_featured, :is_sold_out, :collection_date
  
  # Active Admin Form Settings

  index do
    selectable_column
    index_column
    column "Main image" do |product|
      image_tag product.image_url_1.thumb.url, width: "40"
    end
    column :title
    column :is_featured
    column :is_sold_out

    actions

  end

  form do |f|
    
    f.inputs "Product info" do
      f.input :title
      f.input :price
      f.input :description
      f.input :collection_date
    end

    f.inputs "Filters" do
      f.input :is_featured, label: "Featured on homepage"
      f.input :is_sold_out, label: "Sold out?"
    end

    f.inputs "Images" do
      f.input :image_url_1
      f.input :image_url_2
      f.input :image_url_3
      f.input :image_url_4
      f.input :image_url_5
    end
    f.actions
  end


  #
  # permit_params do
  #   permitted = [:title, :description, :price, :image_url_1, :image_url_2, :image_url_3, :image_url_4, :image_url_5, :is_featured, :is_sold_out, :collection_date]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
