json.array!(@lessons) do |lesson|
  json.extract! lesson, :id, :start_time, :end_time
  json.url lesson_url(lesson, format: :json)
end
