class Golfer < ActiveRecord::Base
  has_many :scores
  has_many :matches

  validates :name, :handicap, :presence => true
  validates :name, :uniqueness => true
end
