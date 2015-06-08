json.array!(@menu_orders) do |menu_order|
  json.extract! menu_order, :id, :menu_id, :order_id
  json.url menu_order_url(menu_order, format: :json)
end
