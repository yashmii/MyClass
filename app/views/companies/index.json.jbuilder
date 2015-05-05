json.array!(@companies) do |company|
  json.extract! company, :id, :company_name, :website, :phone_number, :address, :logo
  json.url company_url(company, format: :json)
end
