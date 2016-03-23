json.array!(@customers) do |customer|
  json.extract! customer, :id, :rollNum, :name, :mobileNum
  json.url customer_url(customer, format: :json)
end
