json.array!(@attempts) do |attempt|
  json.extract! attempt, :id, :registration_date, :result, :start, :end
  json.url attempt_url(attempt, format: :json)
end
