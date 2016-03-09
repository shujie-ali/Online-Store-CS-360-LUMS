json.array!(@orders) do |order|
  json.extract! order, :id, :customer, :bid, :email, :mobile, :status
  json.url order_url(order, format: :json)
end
