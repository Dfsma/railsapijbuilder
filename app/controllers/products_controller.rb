class ProductsController < ApplicationController
    before_action :set_item, only: [:show, :update, :destroy]

    def index
        if params[:category_id]
            @category = Category.includes(:products).find(params[:category_id])
            @products = @category.products
        else
            @products = Product.all
        end
    end

    def paginate
        @products = Product.paginate(page: params[:page], per_page: 3) #will_paginate
       
    end



    def product_params
        params.permit(:name, :url_image, :price, :discount)
    end
    
end
