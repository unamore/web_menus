json.array!(@plates) do |plate|
  json.extract! plate, :id, :codeplate, :nameplate, :typeplate_id
  json.url plate_url(plate, format: :json)
end
