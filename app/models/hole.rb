class Hole < ActiveRecord::Base
  belongs_to :course
  has_many :strokes, :through => :golfer
  has_and_belongs_to_many :matches

end
