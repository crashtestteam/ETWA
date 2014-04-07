json.array!(@answer_pools) do |answer_pool|
  json.extract! answer_pool, :id, :content, :points, :status, :correct
  json.url answer_pool_url(answer_pool, format: :json)
end
