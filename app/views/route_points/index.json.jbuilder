json.array!(@route_points) do |route_point|
  json.extract! route_point, :id, :coordinate_id, :route_id, :point_order
  json.url route_point_url(route_point, format: :json)
end
