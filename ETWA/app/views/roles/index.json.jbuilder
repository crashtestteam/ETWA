json.array!(@roles) do |role|
  json.extract! role, :id, :kind
  json.url role_url(role, format: :json)
end
