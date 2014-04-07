json.array!(@timetables) do |timetable|
  json.extract! timetable, :id, :start, :end, :slots, :location
  json.url timetable_url(timetable, format: :json)
end
