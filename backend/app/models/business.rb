class Business < ApplicationRecord
  belongs_to :user

  has_many :business_attributes

  has_many :hours

  has_many :follows
  has_many :users, through: follows

  has_many :reviews 
  has_many :users, through: :reviews
end



