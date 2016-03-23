json.array!(@orders) do |order|
  json.extract! order, :id, :bookIDs, :customerID, :status, :dateOrdered, :quantities
  json.url order_url(order, format: :json)
end
