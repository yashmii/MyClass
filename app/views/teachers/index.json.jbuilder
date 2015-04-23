json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :first_name, :middle_name, :last_name, :birthdate, :telephone_1, :email, :info, :photo
  json.url teacher_url(teacher, format: :json)
end
