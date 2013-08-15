json.array!(@scores) do |score|
  json.extract! score, :golfer_id, :hole_id, :match_id, :score
  json.url score_url(score, format: :json)
end
