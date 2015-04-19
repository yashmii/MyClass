json.array!(@clients) do |client|
  json.extract! client, :id, :first_name, :middle_name, :last_name, :birthdate, :telephone_1, :email, :info, :photo, :office_id, :language_level
  json.url client_url(client, format: :json)
end
