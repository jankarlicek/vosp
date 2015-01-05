class Route < ActiveRecord::Base
	#has_many	:route_orders
	#has_many	:coordinates, through: :route_order
	#has_and_belongs_to_many :coordinates
  has_many :route_points
  has_many :coordinates, :through => :route_points
end
