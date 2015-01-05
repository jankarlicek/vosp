class RouteController < ActionController::Base
  def index
    routes = Route.all

    @body_routy = Array.new
    radek = Hash.new

    routes.each do |route|
      #route_points = route.route_points.sort_by(:point_order)
      route_points = route.route_points

      route_points.each do |rp|
        radek[:order] = rp.point_order
        coord = Coordinate.find_by(id: rp.coordinate_id)
        radek[:n] = coord.coordinate_N
        radek[:e] = coord.coordinate_E
        @body_routy << radek.dup
      end

    end





  end
end