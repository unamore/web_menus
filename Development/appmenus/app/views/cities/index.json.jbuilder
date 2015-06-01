json.array!(@cities) do |city|
  json.extract! city, :id, :codename, :name
  json.url city_url(city, format: :json)
end
