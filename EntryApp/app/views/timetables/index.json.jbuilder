json.array!(@timetables) do |timetable|
  json.extract! timetable, :id, :start, :end, :slots, :location, :test_id
  json.url timetable_url(timetable, format: :json)
end
