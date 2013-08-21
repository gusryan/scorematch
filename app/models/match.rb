class Match < ActiveRecord::Base
  belongs_to :course
  has_many :scores
  has_many :golfers
end
