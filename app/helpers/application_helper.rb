module ApplicationHelper
  def get_golfer_score(match_id, hole_id)
    score = Score.where("match_id = ? AND hole_id = ?", match_id, hole_id)
  end
end
