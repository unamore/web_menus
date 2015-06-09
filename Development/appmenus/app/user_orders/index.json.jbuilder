json.array!(@user_orders) do |user_order|
  json.extract! user_order, :id, :user_id, :order_id
  json.url user_order_url(user_order, format: :json)
end
