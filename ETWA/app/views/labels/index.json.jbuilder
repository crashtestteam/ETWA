json.array!(@labels) do |label|
  json.extract! label, :id, :label_name
  json.url label_url(label, format: :json)
end
