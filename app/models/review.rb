class Review < ActiveRecord::Base
  validates :rating, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 5}

  belongs_to :user
  has_many :comments
end
