class Match < ActiveRecord::Base
  belongs_to :course 
  belongs_to :golfer
  has_many :scores
  has_many :holes
  validates :name, :golfer1, :golfer2, :presence => true
  validates :name, :uniqueness => true

end
