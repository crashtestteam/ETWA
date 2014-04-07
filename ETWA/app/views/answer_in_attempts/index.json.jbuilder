json.array!(@answer_in_attempts) do |answer_in_attempt|
  json.extract! answer_in_attempt, :id, :answer_id, :attempt_id, :chosen
  json.url answer_in_attempt_url(answer_in_attempt, format: :json)
end
