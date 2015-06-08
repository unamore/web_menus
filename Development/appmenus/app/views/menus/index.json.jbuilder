json.array!(@menus) do |menu|
  json.extract! menu, :id, :date_menu, :price, :date_end, :restaurant_id, :plate_id
  json.url menu_url(menu, format: :json)
end
