class SearchsController < ApplicationController
    def index
        @products = Product.search_by_term(params[:query])
    end

   
    
end
