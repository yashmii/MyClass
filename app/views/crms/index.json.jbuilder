json.array!(@crms) do |crm|
  json.extract! crm, :id, :client_id, :info, :teacher_id
  json.url crm_url(crm, format: :json)
end
