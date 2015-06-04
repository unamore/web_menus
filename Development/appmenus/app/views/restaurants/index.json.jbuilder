json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :coderest, :namerest, :adressrest, :contactrest, :emailrest, :city_id
  json.url restaurant_url(restaurant, format: :json)
end
