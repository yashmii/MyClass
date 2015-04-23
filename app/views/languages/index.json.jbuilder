json.array!(@languages) do |language|
  json.extract! language, :id, :lang
  json.url language_url(language, format: :json)
end
