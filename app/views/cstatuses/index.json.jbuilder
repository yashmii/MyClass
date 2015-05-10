json.array!(@cstatuses) do |cstatus|
  json.extract! cstatus, :id, :cstatus
  json.url cstatus_url(cstatus, format: :json)
end
