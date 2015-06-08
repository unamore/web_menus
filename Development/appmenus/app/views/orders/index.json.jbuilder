json.array!(@orders) do |order|
  json.extract! order, :id, :created_at, :update_at, :address, :phone, :restaurant_id
  json.url order_url(order, format: :json)
end
