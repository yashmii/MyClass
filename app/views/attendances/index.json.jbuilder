json.array!(@attendances) do |attendance|
  json.extract! attendance, :id, :attendance, :client_id, :lesson_id
  json.url attendance_url(attendance, format: :json)
end
