json.array!(@call_services) do |call_service|
  json.extract! call_service, :id, :id_customer, :id_service, :id_component, :details
  json.url call_service_url(call_service, format: :json)
end
