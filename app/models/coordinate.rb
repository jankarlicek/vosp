class Coordinate < ActiveRecord::Base
	validates_presence_of	:coordinate_E, :coordinate_N

	has_one	:node
	#has_one	:route_order 	//možná takhle nejsem si jistý OTESTOVAT! ale asi ne protože každé jeden koordinát může míti více pořadí.
	#has_many	:route_orders
	#has_many	:routes, through: :route_orders
	has_and_belongs_to_many :routes
end
