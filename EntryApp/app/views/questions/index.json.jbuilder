json.array!(@questions) do |question|
  json.extract! question, :id, :difficulty, :content, :status
  json.url question_url(question, format: :json)
end
