class Match < ActiveRecord::Base
  belongs_to :course
  has_many :scores
  has_many :golfers

  validates :name, :presence => true
  validates :name, :uniqueness => true
end
