json.products @products do |product|
    json.(product, :id, :name, :url_image, :price, :discount)
    
   
    json.category do
        json.partial! 'categories/category', category: product.category
    end
end