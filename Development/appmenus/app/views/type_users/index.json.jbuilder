json.array!(@type_users) do |type_user|
  json.extract! type_user, :id, :codetype, :nametype, :created_at, :update_at
  json.url type_user_url(type_user, format: :json)
end
