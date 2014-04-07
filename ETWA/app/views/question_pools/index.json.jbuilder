json.array!(@question_pools) do |question_pool|
  json.extract! question_pool, :id, :difficulty, :content, :status
  json.url question_pool_url(question_pool, format: :json)
end
