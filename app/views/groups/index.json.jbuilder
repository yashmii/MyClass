json.array!(@groups) do |group|
  json.extract! group, :id, :group_name, :teacher_id, :language_id, :office_id, :language_level_id, :book_id, :days, :time, :duration, :info
  json.url group_url(group, format: :json)
end
