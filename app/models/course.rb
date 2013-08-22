class Course < ActiveRecord::Base
  has_many :holes
  has_and_belongs_to_many :matches

  validates :name, :par, :location, :presence => true
  validates :name, :uniqueness => true
end
