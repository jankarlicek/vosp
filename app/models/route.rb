class Route < ActiveRecord::Base
	#has_many	:route_orders
	#has_many	:coordinates, through: :route_order
	has_and_belongs_to_many :coordinates
end
