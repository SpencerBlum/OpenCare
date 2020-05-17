class BusinessesController < ApplicationController

    def index
        businesses = Business.all

        render json: businesses
    end

    def reviews
        reviews = Review.where(id: params["id"])
        render json: reviews
        
    end
end
