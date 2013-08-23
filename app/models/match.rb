class Match < ActiveRecord::Base
  belongs_to :course
  has_many :scores
  belongs_to :golfer1, :class_name => "Golfer"
  belongs_to :golfer2, :class_name => "Golfer"

  validates :name, :presence => true
  validates :name, :uniqueness => true
end
