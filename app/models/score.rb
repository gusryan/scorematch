class Score < ActiveRecord::Base
  belongs_to :golfer1, :class_name => "Golfer"
  belongs_to :golfer2, :class_name => "Golfer"
  belongs_to :match
  
end
