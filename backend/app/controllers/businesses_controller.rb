class BusinessesController < ApplicationController

    def index
        businesses = Business.all
        render json: businesses
    end

    def reviews
        reviews = Review.where(id: params["id"])
        render json: reviews
        
    end


    def create_review
        review = Review.new(user_id: params["currentUser"], business_id: params["currentBusiness"], message: params["formValue"], rating: params["ratingValue"])
        review.save
        business = Business.find(params["currentBusiness"])
        business.update(avg_review: business.averageReview)
        
        render json: business
    end

    
end
