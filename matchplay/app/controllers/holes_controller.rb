class HolesController < ApplicationController
 def create
# We need to get the post so that Rails knows where to assign the comment
@course = Course.find(params[:course_id])
# Here we create a new comment based on the POST data from our form (params[:comment])
@hole = @course.holes.new(hole_params)
# Once the post is saved, we redirect the user back to the post they were viewing
redirect_to course_path(@course)
end
 def hole_params
params.require(:hole).permit(:hole_number, :par, :handicap, :yardage)
end

end

