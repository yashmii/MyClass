json.array!(@tprices) do |tprice|
  json.extract! tprice, :id, :name, :tprice, :active
  json.url tprice_url(tprice, format: :json)
end
