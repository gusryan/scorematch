json.array!(@matches) do |match|
  json.extract! match, :name, :golfer1, :golfer2, :score, :winner, :course_id
  json.url match_url(match, format: :json)
end
