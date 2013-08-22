class Golfer < ActiveRecord::Base
  has_many :scores
  has_and_belongs_to_many :matches

  validates :name, :handicap, :presence => true
  validates :name, :uniqueness => true
end
