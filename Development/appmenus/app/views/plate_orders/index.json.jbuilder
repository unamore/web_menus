json.array!(@plate_orders) do |plate_order|
  json.extract! plate_order, :id, :plate_id, :order_id
  json.url plate_order_url(plate_order, format: :json)
end
