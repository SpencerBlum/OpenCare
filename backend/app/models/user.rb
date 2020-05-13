class User < ApplicationRecord

    has_many :businesses

    has_many :follows
    has_many :businesses, through: :follows
    
    has_many :reviews 
    has_many :businesses, through: :reviews
end
