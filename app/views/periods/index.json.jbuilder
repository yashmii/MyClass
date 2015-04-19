json.array!(@periods) do |period|
  json.extract! period, :id, :PeroidDescription, :group_id
  json.url period_url(period, format: :json)
end
