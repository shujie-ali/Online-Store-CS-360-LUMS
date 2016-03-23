json.array!(@sales) do |sale|
  json.extract! sale, :id, :customerID, :orderID, :bookID, :quantity, :discount
  json.url sale_url(sale, format: :json)
end
