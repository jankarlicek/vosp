json.array!(@route_orders) do |route_order|
  json.extract! route_order, :id
  json.url route_order_url(route_order, format: :json)
end
