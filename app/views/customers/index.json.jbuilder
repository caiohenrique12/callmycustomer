json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :address, :phone1, :phone2, :age, :sex
  json.url customer_url(customer, format: :json)
end
