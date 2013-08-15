class Golfer < ActiveRecord::Base
  has_and_belongs_to_many :matches
  has_many :scores
  validates :name, :handicap, :presence => true
  validates :name, :uniqueness => true
end
