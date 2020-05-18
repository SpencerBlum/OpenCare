class BusinessSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio , :img_url , :reviews, :avg_review



  def reviews 
    
      array = []
    reviews = Review.where(business_id: self.object.id)
    reviews.each do |review|
      obj = {
        review: review,
        user: User.find_by(id: review.user_id)
    }
    array.push(obj)
   
    end
     return array
  end
end

