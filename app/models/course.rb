class Course < ActiveRecord::Base
  has_many :holes
  has_many :matches
  has_many :scores
  validates :name, :par, :location, :presence => true
  validates :name, :uniqueness => true
end
