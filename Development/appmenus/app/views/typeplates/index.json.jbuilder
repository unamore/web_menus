json.array!(@typeplates) do |typeplate|
  json.extract! typeplate, :id, :codetype, :nametype
  json.url typeplate_url(typeplate, format: :json)
end
