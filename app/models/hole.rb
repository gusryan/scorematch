class Hole < ActiveRecord::Base
  belongs_to :course
  has_and_belongs_to_many :matches
  has_many :scores
end
